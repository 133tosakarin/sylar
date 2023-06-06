
#include "../dc/log.h"
#include "../dc/util.h"
#include <thread>
using namespace dc;
dc::Logger::LoggerPtr g_logger = DC_LOG_ROOT();

class A
{
};
void myfunc()
{
}
int main()
{
	int a;
	(void)a;
	DC_LOG_INFO(g_logger) << " logger test";

}
