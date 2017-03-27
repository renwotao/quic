// Small demo that reads form stdin and sents over a quic connection

#include <iostream>
#include <sstream>
#include <time.h>

#include "net/base/ip_endpoint.h"
#include "net/tools/quic/quic_client.h"
#include "base/at_exit.h"
#include "base/command_line.h"
#include "base/logging.h"
#include "base/strings/string_number_conversions.h"
#include "base/strings/string_split.h"
#include "base/strings/string_util.h"
#include "net/base/ip_endpoint.h"
#include "net/base/net_errors.h"
#include "net/quic/core/quic_server_id.h"
#include "net/quic/core/quic_utils.h"
#include "net/quic/core/crypto/proof_verifier.h"

using namespace std;

uint64_t FLAGS_total_transfer = 10 * 1000 * 1000;
uint64_t FLAGS_chunk_size = 1000;
uint64_t FLAGS_duration = 0;

string randomString(uint length) {
  string result = "";
  for (uint i = 0; i < length; i++) {
    result.push_back('a' + rand()%26);
  }
  return result;
}

namespace net {
  class FakeProofVerifier : public ProofVerifier {
     public:
	net::QuicAsyncStatus VerifyProof(
 		const std::string& hostname,
		const uint16_t port,
		const std::string& server_config,
		QuicVersion quic_version,
		base::StringPiece chlo_hash,
		const std::vector<std::string>& certs,
		const std::string& cert_sct,
		const std::string& signature,
		const net::ProofVerifyContext* contex,
		std::string* error_details,
		std::unique_ptr<net::ProofVerifyDetails>* details,
		std::unique_ptr<net::ProofVerifierCallback> callback) override {
		return net::QUIC_SUCCESS;
  	}

	net::QuicAsyncStatus VerifyCertChain(
		const std::string& hostname,
		const std::vector<std::string>& certs,
                const net::ProofVerifyContext* context,
		std::string* error_details,
		std::unique_ptr<net::ProofVerifyDetails>* details,
		std::unique_ptr<net::ProofVerifierCallback> callback) override {
		return net::QUIC_SUCCESS;
	}

  };
}

int main(int argc, char *argv[]) {
  base::CommandLine::Init(argc, argv);
  base::CommandLine* line = base::CommandLine::ForCurrentProcess();
  const base::CommandLine::StringVector& args = line->GetArgs();
  if (args.size() == 0) {
    cout << "No address to connect to was provided.\n"
         << "eg: ./quic_perf_client 127.0.0.1.\n";
    return 1;
  }
  std::string address = args[0];

  if (line->HasSwitch("t")) {
    if (!base::StringToUint64(line->GetSwitchValueASCII("t"), &FLAGS_total_transfer)) {
      cout << "-t must be an unsigned integer\n";
      return 1;
    }
  }
  if (line->HasSwitch("c")) {
    if (!base::StringToUint64(line->GetSwitchValueASCII("c"), &FLAGS_chunk_size)) {
      cout << "-c must be an unsigned integer\n";
      return 1;
    }
  }
  if (line->HasSwitch("d")) {
    if (!base::StringToUint64(line->GetSwitchValueASCII("d"), &FLAGS_duration)) {
      cout << "-d must be an unsigned integer\n";
      return 1;
    }
  }

  cout << "Run parameters are:\nchunk size: " << FLAGS_chunk_size
       << "\ntotal size: " << FLAGS_total_transfer
       << "\nduration: " << FLAGS_duration << "\n";

  // Is needed for whatever reason
  base::AtExitManager exit_manager;

  unsigned char a, b, c, d;
  sscanf(address.c_str(), "%hhu.%hhu.%hhu.%hhu", &a, &b, &c, &d);
  printf("Connecting to %hhu.%hhu.%hhu.%hhu\n", a, b, c, d);
  net::IPAddress ip_address = (net::IPAddress) std::vector<unsigned char>{a, b, c, d};
  net::IPEndPoint server_address(ip_address, 1337);
  net::QuicServerId server_id(address, 1337, net::PRIVACY_MODE_DISABLED);
  net::QuicVersionVector supported_versions = net::AllSupportedVersions();
  net::EpollServer epoll_server;
  std::unique_ptr<net::ProofVerifier> proofVerifier(new net::FakeProofVerifier());

  net::tools::QuicClient client(server_address, server_id, supported_versions, &epoll_server, std::move(proofVerifier));
  if (!client.Initialize()) {
    cerr << "Could not initialize client" << endl;
    return 1;
  }
  cout << "Successfully initialized client" << endl;
  if (!client.Connect()) {
    cout << "Client could not connect" << endl;
    return 1;
  }
  cout << "Successfully connected to server, hopefully" << endl;
  net::tools::QuicClientStream* stream = client.CreateClientStream();
  if (FLAGS_duration == 0) {
    for (uint64_t i = 0; i < FLAGS_total_transfer; i += FLAGS_chunk_size) {
      stream->WriteStringPiece(base::StringPiece(randomString(FLAGS_chunk_size)), false);
      if (stream->HasBufferedData()) {
        client.WaitForEvents();
      }
    }
    
    while (stream->HasBufferedData()) {
      client.WaitForEvents();
    }
    
  } else {
    for (time_t dest = time(NULL) + FLAGS_duration; time(NULL) < dest; ) {
      stream->WriteStringPiece(base::StringPiece(randomString(FLAGS_chunk_size)), false);
      if (stream->HasBufferedData()) {
        client.WaitForEvents();
      }
    }
  }

  stream->CloseConnectionWithDetails(net::QUIC_NO_ERROR, "close app");
  client.Disconnect();
}

