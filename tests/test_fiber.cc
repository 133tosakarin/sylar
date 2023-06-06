#include"../dc/dc.h"

dc::Logger::LoggerPtr  g_logger = DC_LOG_ROOT();

void run_in_fiber() {

	DC_LOG_INFO(g_logger) << "run_in_fiber begin";
	dc::Fiber::YieldToHold();
	DC_LOG_INFO(g_logger) << "run_in_fiber end";
	dc::Fiber::YieldToHold();	
}

void test_fiber() {
	DC_LOG_INFO(g_logger) << "main begin -1" ;
	{
		dc::Fiber::GetThis();
		DC_LOG_INFO(g_logger) << "main begin";
		dc::Fiber::ptr fiber(new dc::Fiber(run_in_fiber));
		fiber->swapIn();
		DC_LOG_INFO(g_logger) << "main after swapIn";
		fiber->swapIn();
		DC_LOG_INFO(g_logger) << "main end";
		fiber->swapIn();
	}
	DC_LOG_INFO(g_logger) << "main end2" ;

}
int main(int argc, char** argv) {
	
	;
	dc::Thread::SetName("main");
	std::vector<dc::Thread::ptr> thrs;
	for(int i = 0; i < 3; ++i) {
		thrs.push_back(dc::Thread::ptr(
			new dc::Thread(&test_fiber, "name_" + std::to_string(i+1))));
	}
	for( auto i : thrs) {
		i->join();
	}
	return 0;
}
