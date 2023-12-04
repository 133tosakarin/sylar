#include "../dc/log.h"
#include "../dc/ioManager.h"
#include "../dc/http/http_connection.h"

using namespace dc;
using namespace dc::http;

Logger::LoggerPtr g_logger = DC_LOG_ROOT();

void run()
{
	Address::ptr addr = Address::LookupAnyIPAddress("www.baidu.com:80");
	if( !addr )
	{
		DC_LOG_INFO( g_logger )<< " get addr error";
		return ;
	}

	Socket::ptr sock = Socket::CreateTcp(addr);
	bool ret = sock->connect(addr);
	if( !ret )
	{
		DC_LOG_ERROR(g_logger) << " connect " << *addr << "failed";
		return;
	}

	HttpConnection::ptr conn(new HttpConnection(sock));
	HttpRequest::ptr req(new HttpRequest);
	DC_LOG_INFO(g_logger) << "req : \n" << *req;

	conn->sendRequest(req);
	auto resp = conn->recvResponse();

	if( !resp )
	{
		DC_LOG_ERROR(g_logger) << "recv resp error";
		return ;
	}

	DC_LOG_INFO(g_logger) << "resp: \n" << *resp;
}

int main()
{
	IOManager iom(2);
	iom.schedule(run);
	return 0;
}
