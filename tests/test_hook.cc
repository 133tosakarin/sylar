#include "../dc/hook.h"
#include "../dc/dc.h"
#include "../dc/ioManager.h"
#include <arpa/inet.h>
using namespace dc;
Logger::LoggerPtr g_logger = DC_LOG_ROOT();


void test_sleep()
{
	IOManager iom(1);
	iom.schedule([]
		{
			sleep(2);
			DC_LOG_INFO(g_logger) << "sleep 2";
		});

	iom.schedule([]
			{
				sleep(3);
				DC_LOG_INFO(g_logger) << "sleep 3";
			});
	DC_LOG_INFO(g_logger) << "test_sleep_over";

}

void test_sock()
{
	int sock = socket(AF_INET, SOCK_STREAM, 0 );
		sockaddr_in addr;
	memset(&addr, 0, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_port = htons(80);
	inet_pton(AF_INET, "39.156.66.14", &addr.sin_addr);

	DC_LOG_INFO( g_logger ) << "begin connect";
	int ret = connect(sock, (const sockaddr*)&addr, sizeof(addr));
	DC_LOG_INFO(g_logger) << "connect ret = " << ret << " errno = " << errno;
	if( ret )
	{
		return;
	}

	const char data[] = "GET / HTTP/1.0\r\n\r\n";
	ret = send(sock, data, sizeof(data), 0);
	DC_LOG_INFO(g_logger) << "send ret = " << ret << " errno " << errno;
	if( ret <= 0 )
	{
		return;
	}

	std::string buf;
	buf.resize(4096);
	ret = recv(sock, const_cast<char*>(buf.data()), buf.size(), 0);
	DC_LOG_INFO(g_logger) << "recv ret = " << ret << " errno = " << errno;
	if( ret <= 0 )
	{
		return;
	}
	buf.resize(ret);
	DC_LOG_INFO(g_logger) << buf;
}
int main()
{
	//test_sleep();
	//test_sock();
	IOManager iom;
	iom.schedule(test_sock);

}
