#include "net/quic/core/reliable_quic_stream.h"
#include "base/strings/string_piece.h"

namespace net {
  namespace tools {

    class QuicClientStream: public ReliableQuicStream {
    public:
      QuicClientStream(QuicStreamId id, QuicSession* session);
      ~QuicClientStream();

      void OnDataAvailable();

      void WriteStringPiece(base::StringPiece data, bool fin); 
    };
  }
}
