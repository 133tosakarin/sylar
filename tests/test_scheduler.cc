#include"../dc/dc.h"
#include <atomic>

dc::Logger::LoggerPtr g_logger = DC_LOG_ROOT();
using namespace dc;
void test2();
void test_fiber()
{
	static int s_count = {5};
	DC_LOG_INFO(g_logger) << "test_in fiber " << GetThreadId() << " " << GetFiberId() << " s_count = " << s_count;
	
	//sleep(1);
	if(--s_count >= 0 )
	{
		Scheduler::GetThis()->schedule(test_fiber, GetThreadId());
	}
	
}

void test2()
{
	DC_LOG_INFO(g_logger) << "test2_in fiber " << GetThreadId() << " " << GetFiberId();
	//sleep(1);
	//Scheduler::GetThis()->schedule(test_fiber);
}
int main(int argc, char** argv) {
	dc::Scheduler sc(3, false);
	sc.schedule(test_fiber);
	sc.start();
	sc.schedule(test2);
	sc.stop();
	DC_LOG_INFO(g_logger) << "main over";
	return 0;
}
