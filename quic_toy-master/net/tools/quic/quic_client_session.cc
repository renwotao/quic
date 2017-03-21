// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "base/logging.h"
#include "net/tools/quic/quic_client_session.h"
#include "net/quic/core/crypto/crypto_protocol.h"
#include "net/quic/core/quic_server_id.h"

using std::string;

namespace net {
namespace tools {

QuicClientSession::QuicClientSession(const QuicConfig& config,
                                     QuicConnection* connection)
    : QuicSession(connection, config) {
}

QuicClientSession::~QuicClientSession() {
}

void QuicClientSession::InitializeSession(
    const QuicServerId& server_id,
    QuicCryptoClientConfig* crypto_config) {
  crypto_stream_.reset(
      new QuicCryptoClientStream(server_id, this, nullptr, crypto_config, this));
  QuicSession::Initialize();
}

void QuicClientSession::CryptoConnect() {
  DCHECK(flow_controller());
  crypto_stream_->CryptoConnect();
}
  
QuicClientStream* QuicClientSession::CreateClientStream() {
  ReliableQuicStream* stream = new QuicClientStream(GetNextOutgoingStreamId(), this);
  ActivateStream(stream);
  return (QuicClientStream*) stream;
}

}  // namespace tools
}  // namespace net
