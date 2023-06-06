#include"../dc/dc.h"
#include<unistd.h>
dc::Logger::LoggerPtr g_logger = DC_LOG_ROOT();
int count = 0;
//dc::RWMutex s_mutex;
dc::Mutex s_mutex;
void fun1() {
	DC_LOG_INFO(g_logger) << "name: " << dc::Thread::GetName()
						  << " this.name: " << dc::Thread::GetThis()->getName()
						  << " id: " << dc::GetThreadId()
						  << " this.id: " << dc::Thread::GetThis()->getId();
	for(int i = 0 ; i < 100; ++i){
		dc::Mutex::Lock lock(s_mutex);
		++count;
	}
}

void fun2() {
	for(int i = 0; i<100; i++) {
		DC_LOG_INFO(g_logger) << "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
	}
}

void fun3() {
	for(int i = 0; i<100; i++) {
		DC_LOG_INFO(g_logger) << "============================";
	}
}
int main(){
	DC_LOG_INFO(g_logger) << "thread test begin";
    YAML::Node root = YAML::LoadFile("/home/tohsakarin/Documents/sylar/sylar_server_frame/bin/conf/log2.yml");
	dc::Config::LoadFromYaml(root);
	std::vector<dc::Thread::ptr> thrs;
	for(int i = 0; i<5; ++i) {
		dc::Thread::ptr thr(new dc::Thread(&fun2, "name_" + std::to_string(i)));
		dc::Thread::ptr thr2(new dc::Thread(&fun3, "name_" + std::to_string(i*2+1)));
		
		thrs.push_back(thr);
		thrs.push_back(thr2);
	}

	for(int i = 0; i < 5; ++i) {
		thrs[i]->join();
	}
	DC_LOG_INFO(g_logger) << "thread test end";
	DC_LOG_INFO(g_logger) << "count = " << count ;
	dc::Config::Visit([] (dc::ConfigVarBase::ptr var) {
		DC_LOG_INFO(g_logger) << "name = " << var->getName()
							 << " description = " << var->getDescription()
							 << "typename = " << var->getTypeName()
							 << " value = " << var->toString();
	});

	return 0;
}
