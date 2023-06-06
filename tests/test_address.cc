#include "../dc/address.h"
#include "../dc/dc.h"
#include <chrono>
#include <time.h>



dc::Logger::LoggerPtr g_logger = DC_LOG_ROOT();


using namespace dc;
void test()
{
	std::vector<Address::ptr> addrs;
	
	time_t st = time(nullptr);
	bool v = Address::Lookup(addrs, "www.baidu.com:http");
	time_t ed = time(nullptr);
	DC_LOG_INFO( g_logger) << "use :"<<ed - st;

	if( !v )
	{
		DC_LOG_ERROR(g_logger) << "lookup fail";
		return;
	}

	for( size_t i = 0; i < addrs.size(); ++i )
	{
		DC_LOG_INFO(g_logger) << addrs[i]->toString();
	}

}

void test_iface()
{
	std::multimap<std::string, std::pair<Address::ptr, uint16_t>> results;
	bool v = Address::GetInterfaceAddresses(results);
	if( !v )
	{
		DC_LOG_ERROR(g_logger) << " GetInterfaceAddresses";
	}

	for( auto& i : results )
	{
		DC_LOG_INFO( g_logger) << i.first << " " << i.second.first->toString();
	}

}

int main()
{
	test();	
	test_iface();
}
