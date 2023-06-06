#include"util.h"
#include"log.h"
#include<execinfo.h>
#include"fiber.h"
#include<sys/time.h>
namespace dc
{
	dc::Logger::LoggerPtr g_logger = DC_LOG_NAME("system");

	
	pid_t  GetThreadId(){
		return syscall(SYS_gettid);
	}
	uint32_t GetFiberId(){
		return dc::Fiber::GetFiberId();
	}
	void Backtrace(std::vector<std::string>& bt, int size, int skip) {
		void** array = (void**)malloc((sizeof(void*) * size));
		size_t s = ::backtrace(array, size);//全局作用域下的back
		char** strings = backtrace_symbols(array, s);
		if(strings == NULL) {
			DC_LOG_ERROR(g_logger) << "backtrace_symbols error";
			return;
		}

		for(size_t i = skip; i < s; ++i) {
			bt.push_back(strings[i]);
		
		}

		free(strings);
		free(array);
	
	}
	//直接把栈中的内容转为string
	std::string BacktraceToString(int size, int skip, const std::string& prefix) {
		std::vector<std::string> bt;
		Backtrace(bt, size, skip);
		std::stringstream ss;
		for(size_t i = 0; i< bt.size(); ++i) {
			ss << prefix  <<  bt[i] << std::endl;
		}
		return ss.str();
	}

uint64_t GetCurrentMs()
{
	struct timeval tv;
	gettimeofday(&tv, nullptr);
	return tv.tv_sec * 1000 + tv.tv_usec /1000;
}

uint64_t GetCurrentUs()
{
	struct timeval tv;
	gettimeofday(&tv, nullptr);
	return tv.tv_sec * 1000 * 1000ul + tv.tv_usec;
}

}
