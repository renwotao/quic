// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "net/tools/quic/quic_server.h"

#include <errno.h>
#include <features.h>
#include <netinet/in.h>
#include <string.h>
#include <sys/epoll.h>
#include <sys/socket.h>

#include "net/base/ip_endpoint.h"
#include "net/quic/core/crypto/crypto_handshake.h"
#include "net/quic/core/crypto/quic_random.h"
#include "net/quic/core/quic_clock.h"
#include "net/quic/core/quic_crypto_stream.h"
#include "net/quic/core/quic_data_reader.h"
#include "net/quic/core/quic_protocol.h"
#include "net/tools/quic/quic_dispatcher.h"
#include "net/tools/quic/quic_epoll_clock.h"
#include "net/tools/quic/quic_epoll_connection_helper.h"
#include "net/tools/quic/quic_socket_utils.h"

#ifndef SO_RXQ_OVFL
#define SO_RXQ_OVFL 40
#endif

namespace net {
namespace tools {
namespace {

const int kEpollFlags = EPOLLIN | EPOLLOUT | EPOLLET;
const char kSourceAddressTokenSecret[] = "secret";

}  // namespace

QuicServer::QuicServer(std::unique_ptr<ProofSource> proof_source,
                       const QuicConfig& config,
                       const QuicVersionVector& supported_versions)
    : port_(0),
      fd_(-1),
      packets_dropped_(0),
      overflow_supported_(false),
      config_(config),
      crypto_config_(kSourceAddressTokenSecret, QuicRandom::GetInstance(), std::move(proof_source)),
      supported_versions_(supported_versions) {
  // If an initial flow control window has not explicitly been set, then use a
  // sensible value for a server: 1 MB for session, 64 KB for each stream.
  const uint32_t kInitialSessionFlowControlWindow = 1 * 1024 * 1024;  // 1 MB
  const uint32_t kInitialStreamFlowControlWindow = 30 * 1024;
  config_.SetInitialStreamFlowControlWindowToSend(kInitialStreamFlowControlWindow);
  if (config_.GetInitialSessionFlowControlWindowToSend() ==
      kMinimumFlowControlSendWindow) {
    config_.SetInitialSessionFlowControlWindowToSend(
        kInitialSessionFlowControlWindow);
  }

  epoll_server_.set_timeout_in_us(50 * 1000);

  QuicEpollClock clock(&epoll_server_);

  std::unique_ptr<CryptoHandshakeMessage> scfg(
      crypto_config_.AddDefaultConfig(
          QuicRandom::GetInstance(), &clock,
          QuicCryptoServerConfig::ConfigOptions()));
}

QuicServer::~QuicServer() {
}

bool QuicServer::Listen(const IPEndPoint& address) {
  port_ = address.port();
  int address_family = address.GetSockAddrFamily();
  fd_ = socket(address_family, SOCK_DGRAM | SOCK_NONBLOCK, IPPROTO_UDP);
  if (fd_ < 0) {
    LOG(ERROR) << "CreateSocket() failed: " << strerror(errno);
    return false;
  }

  // Enable the socket option that allows the local address to be
  // returned if the socket is bound to more than one address.
  int rc = QuicSocketUtils::SetGetAddressInfo(fd_, address_family);

  if (rc < 0) {
    LOG(ERROR) << "IP detection not supported" << strerror(errno);
    return false;
  }

  int get_overflow = 1;
  rc = setsockopt(
      fd_, SOL_SOCKET, SO_RXQ_OVFL, &get_overflow, sizeof(get_overflow));

  if (rc < 0) {
    DLOG(WARNING) << "Socket overflow detection not supported";
  } else {
    overflow_supported_ = true;
  }

  // These send and receive buffer sizes are sized for a single connection,
  // because the default usage of QuicServer is as a test server with one or
  // two clients.  Adjust higher for use with many clients.
  if (!QuicSocketUtils::SetReceiveBufferSize(fd_,
                                             kDefaultSocketReceiveBuffer)) {
    return false;
  }

  if (!QuicSocketUtils::SetSendBufferSize(fd_, kDefaultSocketReceiveBuffer)) {
    return false;
  }

  sockaddr_storage raw_addr;
  socklen_t raw_addr_len = sizeof(raw_addr);
  CHECK(address.ToSockAddr(reinterpret_cast<sockaddr*>(&raw_addr),
                           &raw_addr_len));
  rc = bind(fd_,
            reinterpret_cast<const sockaddr*>(&raw_addr),
            sizeof(raw_addr));
  if (rc < 0) {
    LOG(ERROR) << "Bind failed: " << strerror(errno);
    return false;
  }

  DVLOG(1) << "Listening on " << address.ToString();
  if (port_ == 0) {
    SockaddrStorage storage;
    IPEndPoint server_address;
    if (getsockname(fd_, storage.addr, &storage.addr_len) != 0 ||
        !server_address.FromSockAddr(storage.addr, storage.addr_len)) {
      LOG(ERROR) << "Unable to get self address.  Error: " << strerror(errno);
      return false;
    }
    port_ = server_address.port();
    DVLOG(1) << "Kernel assigned port is " << port_;
  }

  epoll_server_.RegisterFD(fd_, this, kEpollFlags);
  dispatcher_.reset(new QuicDispatcher(
      config_,
      &crypto_config_,
      supported_versions_,
      new QuicEpollConnectionHelper(&epoll_server_, QuicAllocator::BUFFER_POOL),
      new QuicEpollAlarmFactory(&epoll_server_)));
  dispatcher_->InitializeWithWriter(new QuicDefaultPacketWriter(fd_));

  return true;
}

void QuicServer::WaitForEvents() {
  epoll_server_.WaitForEventsAndExecuteCallbacks();
}

void QuicServer::Shutdown() {
  // Before we shut down the epoll server, give all active sessions a chance to
  // notify clients that they're closing.
  dispatcher_->Shutdown();

  close(fd_);
  fd_ = -1;
}

void QuicServer::OnEvent(int fd, EpollEvent* event) {
  DCHECK_EQ(fd, fd_);
  event->out_ready_mask = 0;

  if (event->in_events & EPOLLIN) {
    DVLOG(1) << "EPOLLIN";
    bool read = true;
    while (read) {
      read = ReadAndDispatchSinglePacket(
					 fd_, port_, dispatcher_.get(), dispatcher_.get()->helper(),
					 overflow_supported_ ? &packets_dropped_ : nullptr);
    }
  }
  if (event->in_events & EPOLLOUT) {
    dispatcher_->OnCanWrite();
    if (dispatcher_->HasPendingWrites()) {
      event->out_ready_mask |= EPOLLOUT;
    }
  }
  if (event->in_events & EPOLLERR) {
  }
}

/* static */
bool QuicServer::ReadAndDispatchSinglePacket(int fd,
                                             int port,
                                             ProcessPacketInterface* dispatcher,
					     QuicConnectionHelperInterface* helper,
                                             QuicPacketCount* packets_dropped) {
  // Allocate some extra space so we can send an error if the client goes over
  // the limit.
  char buf[2 * kMaxPacketSize];

  IPEndPoint client_address;
  IPAddress server_ip;
  int bytes_read =
      QuicSocketUtils::ReadPacket(fd, buf, arraysize(buf),
                                  packets_dropped,
                                  &server_ip, &client_address);

  if (bytes_read < 0) {
    return false;  // We failed to read.
  }

  QuicReceivedPacket packet(buf, bytes_read, 
	                    helper->GetClock()->Now(), 
                            false);

  IPEndPoint server_address(server_ip, port);
  dispatcher->ProcessPacket(server_address, client_address, packet);

  // The socket read was successful, so return true even if packet dispatch
  // failed.
  return true;
}

}  // namespace tools
}  // namespace net