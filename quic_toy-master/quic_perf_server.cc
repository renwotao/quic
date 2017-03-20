// Small demo that reads form stdin and sents over a quic connection

#include <iostream>

#include "net/base/ip_endpoint.h"
#include "net/tools/quic/quic_server.h"

#include "base/at_exit.h"
#include "base/command_line.h"
#include "base/strings/string_split.h"
#include "base/strings/string_util.h"
#include "net/base/privacy_mode.h"
#include "net/quic/core/quic_protocol.h"
#include "net/quic/core/quic_server_id.h"

using namespace std;
int32_t FLAGS_port = 1337;

int main(int argc, char *argv[]) {

  // Is needed for whatever reason
  base::AtExitManager exit_manager;
  /*
  base::CommandLine::Init(argc, argv);
  base::CommandLine* line = base::CommandLine::ForCurrentProcess();

  if (line->HasSwitch("h") || line->HasSwitch("help")) {
    const char* help_str = 
    	"Usage: quic_perf_server [options]\n"
        "\n"
  	"Options:\n"
 	"-h, --help			show this help message and exit\n"
        "--port=<port>			specify the prot to listen on\n"
	"--certificate_file=<file>	path to the certificate chain\n"
        "--key-file=<file>		path to the pkcs8 private key\n"
    cout << help_str;
    exit(0);
  }

  if (!line->HasSwitch("port")) {
    if (!base::StringToInt(line->GetSwitchValueASCII("port"), &FLAGS_port)) {
       cerr << "--port must be an integer" << endl; 
       return 1;
    }
  }
  if (!line->HasSwitch("certificate_file")) {
    cerr << "missing --certificate_file" << endl;
    return 1;
  }
  if (!line->HasSwitch("key_file")) {
    cerr << "missing --key_file" << endl;
    return 1;
  }*/

  net::IPAddress ip_address = (net::IPAddress) std::vector<unsigned char> { 0, 0, 0, 0 };
  net::IPEndPoint listen_address(ip_address, FLAGS_port);
  net::QuicConfig config;
  net::QuicVersionVector supported_versions = net::AllSupportedVersions();
  net::EpollServer epoll_server;

  net::tools::QuicServer server(nullptr, config, supported_versions);


  // Start listening on the specified address.
  if (!server.Listen(listen_address)) {
    cerr << "Could not listen on socket" << endl;
    return 1;
  }

  while (1) {
    server.WaitForEvents();
  }

  cout.flush();

}
