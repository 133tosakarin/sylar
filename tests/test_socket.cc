#include "../dc/socket.h"
#include "../dc/dc.h"
#include "../dc/ioManager.h"
static dc::Logger::LoggerPtr g_logger = DC_LOG_ROOT();
using namespace dc;
void test_socket()
{
	Address::ptr addr = Address::LookupAnyIPAddress("www.baidum.com");
	if( addr )
	{
		DC_LOG_INFO(g_logger) << "get address " << addr->toString();
	}
	else
	{
		DC_LOG_ERROR(g_logger) << "get address fail";
		return;
	}

	Socket::ptr sock = Socket::CreateTcp(addr);
	addr->setPort(80);
	if( !sock->connect(addr))
	{
		DC_LOG_ERROR(g_logger) << "connect" << addr->toString() << " fail";
	}
	else
	{
		DC_LOG_INFO( g_logger) << " connect" << addr->toString() << "connected";
	}

}

int main(int argc, char** argv)
{

}
