// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include <iostream>

#include "net/tools/quic/quic_server_session.h"

#include "base/logging.h"
#include "net/quic/core/quic_connection.h"
#include "net/quic/core/quic_flags.h"

#include "net/tools/quic/quic_server_stream.h"

using namespace std;

namespace net {
namespace tools {

QuicServerSession::QuicServerSession(const QuicConfig& config,
                                     QuicConnection* connection,
                                     QuicServerSessionVisitor* visitor,
                                     QuicConnectionHelperInterface* helper)
    : QuicSession(connection, config),
      visitor_(visitor),
      helper_(helper),
      bandwidth_estimate_sent_to_client_(QuicBandwidth::Zero()),
      last_scup_time_(QuicTime::Zero()),
      last_scup_sequence_number_(0) {}

QuicServerSession::~QuicServerSession() {}

void QuicServerSession::InitializeSession(
    const QuicCryptoServerConfig* crypto_config,
    QuicCompressedCertsCache* compressed_certs_cache,
    QuicCryptoServerStream::Helper* helper) {
  crypto_stream_.reset(new QuicCryptoServerStream(crypto_config, compressed_certs_cache,
                       FLAGS_enable_quic_stateless_reject_support, this,
                       helper));
  QuicSession::Initialize();
}

void QuicServerSession::OnConnectionClosed(QuicErrorCode error,
                                           const std::string& error_details,
					   ConnectionCloseSource source) {
  QuicSession::OnConnectionClosed(error, error_details, source);
  // In the unlikely event we get a connection close while doing an asynchronous
  // crypto event, make sure we cancel the callback.
  if (crypto_stream_.get() != nullptr) {
    crypto_stream_->CancelOutstandingCallbacks();
  }
  visitor_->OnConnectionClosed(connection()->connection_id(), error);
}

void QuicServerSession::OnWriteBlocked() {
  QuicSession::OnWriteBlocked();
  visitor_->OnWriteBlocked(connection());
}

QuicCryptoServerStream* QuicServerSession::GetCryptoStream() {
  return crypto_stream_.get();
}

ReliableQuicStream* QuicServerSession::CreateIncomingDynamicStream(QuicStreamId id) {
  QuicServerStream* stream = new QuicServerStream(id, this);
  return stream;
}

}  // namespace tools
}  // namespace net
