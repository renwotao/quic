#include <iostream>

#include "net/tools/quic/quic_server_stream.h"

namespace net {
  namespace tools {

    QuicServerStream::QuicServerStream(QuicStreamId id, QuicSession* session, QuicConnectionHelperInterface* helper, QuicAlarmFactory* alarm_factory)
      : ReliableQuicStream(id, session),
        helper_(helper),
        alarm_(alarm_factory->CreateAlarm(this)) {
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

    void QuicServerStream::SetupPerformanceAlarm() {
      QuicTime onesecond = helper_->GetClock()->ApproximateNow() + QuicTime::Delta::FromSeconds(1);
      alarm_->Set(onesecond);
    }

    void QuicServerStream::OnAlarm() {
     /*
      QuicWallTime now = helper_->GetClock()->WallNow();
      std::cout << bytes_received << "\n";
      return helper_->GetClock()->ApproximateNow().Add(QuicTime::Delta::FromSeconds(1));*/
    }

    void QuicServerStream::OnClose() {
      ReliableQuicStream::OnClose();
      exit(0);
    }
  }
}
