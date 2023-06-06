#include "../dc/dc.h"
#include "../dc/ioManager.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <cstring>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
dc::Logger::LoggerPtr g_logger = DC_LOG_ROOT();
using namespace dc;

void test_fiber()
{
	DC_LOG_INFO (g_logger) << "test_fiber";
}

void test1(IOManager& iom)
{
	iom.schedule(test_fiber);
	int sock = socket(AF_INET, SOCK_STREAM, 0 );
	fcntl(sock, F_SETFL, O_NONBLOCK);
	sockaddr_in sock_addr;
	memset(&sock_addr, 0, sizeof sock_addr);
	sock_addr.sin_port = htons(80);
	sock_addr.sin_family = AF_INET;
	inet_pton(AF_INET, "39.156.66.18", &sock_addr.sin_addr);
	iom.addEvent(sock, IOManager::kWrite , []{
		if( errno == EINPROGRESS )
		{
			DC_LOG_INFO(g_logger) << " connected ";	
		}
		else
		{
			DC_LOG_INFO(g_logger) <<  "errno = " << errno  << " " << strerror(errno);
		}
			});
	int ret = connect(sock, reinterpret_cast<sockaddr*>(&sock_addr), sizeof sock_addr);
	if(ret);

}
Timer::ptr g_timer;
IOManager iom(3);
void test_timer()
{
	const int kNum = 1;
	for( int i = 0; i < kNum; ++i )
	{
		 g_timer = iom.addTimer(1000 + i, 
			[&]
			{
				static int count = 0;
				if( ++ count == 5 )
				{
					g_timer->cancel();
				}
			}, true);
	}
	iom.schedule(test_fiber);
	Fiber::ptr fiber(new Fiber([]{DC_LOG_INFO(g_logger) << "lambda test";}));
	iom.schedule(fiber);
	iom.schedule(std::bind(test1, std::ref(iom)));
}
/* 
 * ===  FUNCTION  ======================================================================
 *         Name:  main
 *  Description:  
 * =====================================================================================
 */
	int
main ( int argc, char *argv[] )
{
	test_timer();
	//test1();
	return EXIT_SUCCESS;
}				/* ----------  end of function main  ---------- */
