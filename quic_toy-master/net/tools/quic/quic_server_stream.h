#ifndef NET_TOOLS_QUIC_SERVER_STREAM_
#define NET_TOOLS_QUIC_SERVER_STREAM_

#include "net/quic/core/quic_alarm.h"
#include "net/quic/core/quic_alarm_factory.h"
//#include "net/quic/core/reliable_quic_stream.h" 
#include "net/quic/core/quic_connection.h"
#include "net/quic/core/quic_protocol.h"
#include "net/quic/core/quic_session.h"

namespace net {

  namespace tools {

    class QuicServerStream: public ReliableQuicStream, public QuicAlarm::Delegate {
    public:
      QuicServerStream(QuicStreamId id, 
                       QuicSession* session,
		       QuicConnectionHelperInterface* helper, 
                       QuicAlarmFactory *alarm_factory);
      ~QuicServerStream();

      void OnDataAvailable();

      void WriteStringPiece(base::StringPiece data, bool fin);

      void SetupPerformanceAlarm();

      void OnAlarm();

      void OnClose();

    private:
      uint64_t bytes_received = 0;
      QuicConnectionHelperInterface* helper_;
      QuicAlarm* alarm_;
    };
  }
}

#endif
