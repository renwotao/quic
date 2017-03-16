#include <iostream>

#include "net/tools/quic/quic_client_stream.h"

namespace net {
  namespace tools {

    QuicClientStream::QuicClientStream(QuicStreamId id, QuicSession* session)
      : ReliableQuicStream(id, session) {
    }

    QuicClientStream::~QuicClientStream() {}
    /*
    uint32 QuicClientStream::ProcessRawData(const char* data, uint32 data_len) {
      std::cout << "Received " << data_len << " bytes of data\n";
      return data_len;
    }*/
    
    void QuicClientStream::OnDataAvailable() {
        std::string data;
        struct iovec iov;
	while (sequencer()->HasBytesToRead()) {
	  if (sequencer()->GetReadableRegions(&iov, 1) == 0) {
	    break;
	  }   
          data.append(static_cast<char*>(iov.iov_base), iov.iov_len);
	  sequencer()->MarkConsumed(iov.iov_len);
	}
        std::cout << "Received "<< data.length() << "bytes of data" 
		<< ": " << data << std::endl;
        if (sequencer()->IsClosed()) {
          OnFinRead();
        } else {
          sequencer()->SetUnblocked();
        }
    }
   
    /*
    QuicPriority QuicClientStream::EffectivePriority() const {
      return (QuicPriority) 0;
    }*/  
    
    void QuicClientStream::WriteStringPiece(base::StringPiece data, bool fin) {
      WriteOrBufferData(data, fin, nullptr);
    }
  }
}
