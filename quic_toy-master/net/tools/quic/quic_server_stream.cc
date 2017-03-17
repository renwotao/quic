#include <iostream>

#include "net/tools/quic/quic_server_stream.h"

namespace net {
  namespace tools {

    QuicServerStream::QuicServerStream(QuicStreamId id, QuicSession* session)
      : ReliableQuicStream(id, session) {
    }

    QuicServerStream::~QuicServerStream() {
      alarm_->Cancel();
    }

    void QuicServerStream::OnDataAvailable() {
      std::string data;
      struct iovec iov;
      while (sequencer()->HasBytesToRead()) {
        if (sequencer()->GetReadableRegions(&iov, 1) == 0) {
          break;
        }
        data.append(static_cast<char*>(iov.iov_base), iov.iov_len);
        sequencer()->MarkConsumed(iov.iov_len);
      } 
      
      std::cout << "Received " << data.length() << "bytes of data"
                << ": " << data << std::endl;

      if (sequencer()->IsClosed()) {
        OnFinRead();
      } else {
        sequencer()->SetUnblocked();
      }
    }
    
    void QuicServerStream::WriteStringPiece(base::StringPiece data, bool fin) {
      this->WriteOrBufferData(data, fin, nullptr);
    }

    void QuicServerStream::OnClose() {
      ReliableQuicStream::OnClose();
      exit(0);
    }
  }
}
