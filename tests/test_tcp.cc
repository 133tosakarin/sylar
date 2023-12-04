#include "../dc/tcp_server.h"
#include "../dc/ioManager.h"
#include "../dc/address.h"
#include <chrono>
using namespace dc;

static Logger::LoggerPtr g_logger = DC_LOG_ROOT();
void run()
{
	auto addr = Address::LookupAny("0.0.0.0:8033");
	//auto addr2 = UnixAddress::ptr(new UnixAddress("/tmp/unix_addr"));
	DC_LOG_INFO(g_logger) << *addr << " - ";
	std::vector<Address::ptr> addrs, fails;
	addrs.push_back(addr);
	//addrs.push_back(addr2);

	TcpServer::ptr tcp_server(new TcpServer);
	while(!tcp_server->bind(addrs, fails))
	{
		sleep(2);
	}
	tcp_server->start();
	

}
int main()
{
	IOManager iom(2);
	iom.schedule(run);
	DC_LOG_INFO(g_logger) << " main over" << &iom;

}
