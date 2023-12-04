#include "../dc/tcp_server.h"
#include "../dc/bytearray.h"
#include "../dc/log.h"
#include "../dc/ioManager.h"
#include "../dc/socket.h"

using namespace dc;
Logger::LoggerPtr g_logger = DC_LOG_ROOT();
class EchoServer : public TcpServer
{
public:
	EchoServer(int type);
	void handleClient(Socket::ptr client) override;


private:
	int type_ = 0;

};

EchoServer::EchoServer(int type)
	: type_(type)
{

}

void EchoServer::handleClient(Socket::ptr client)
{
	DC_LOG_INFO(g_logger) << "handleClient" << *client;
	ByteArray::ptr ba(new ByteArray);
	while(true)
	{
		ba->clear();
		std::vector<iovec> iovs;
		ba->getWriteBuffers(iovs, 1024);

		int ret = client->recv(&iovs[0], iovs.size());
		if( ret == 0 )
		{
			DC_LOG_INFO(g_logger) << "client close: " << *client;
			break;
		}
		else if( ret < 0 )
		{
			DC_LOG_ERROR(g_logger) << "client error ret = " << ret
				<<  " error = " << errno <<" errstr = " << strerror(errno);
			break;
		}
		DC_LOG_INFO(g_logger) << "recv from : " << *client << " ret = " << ret << " data = " << std::string((char*)iovs[0].iov_base, ret);
		ba->setPosition(ba->getPosition() + ret );
		ba->setPosition(0);
		if( type_ == 0 ) // text
		{
			DC_LOG_INFO(g_logger) << ba->toString();
		}
		else
		{
			DC_LOG_ERROR(g_logger) << ba->toHexString();
		}
	}

}
int type = 0;

void run()
{
	EchoServer::ptr es(new EchoServer(type));
	auto addr = Address::LookupAny("0.0.0.0:8020");
	while(!es->bind(addr))
	{
		sleep(2);
	}
	es->start();
}
int main(int argc, char** argv)
{
	if( argc < 2 )
	{
		DC_LOG_ERROR(g_logger) << "used as [" << argv[0] << "-t] or [" << argv[0] << "-b]";
		return 0;
	}
	if( strcmp(argv[1], "-b") )
		type = 2;
	
	IOManager iom(2);
	iom.schedule(run);
	return 0;
}
