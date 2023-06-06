#include"../dc/dc.h"
#include<assert.h>
dc::Logger::LoggerPtr g_logger = DC_LOG_ROOT();

void test_assert() {
	//assert (0);
	DC_LOG_INFO(g_logger) << dc::BacktraceToString(10);
	DC_ASSERT2(false, "abcde rin");
}
int main(int argc, char** argv) {
	//assert (1);
	test_assert();
	return 0;

}
