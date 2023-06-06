#include"thread.h"
#include"log.h"
#include"util.h"
namespace dc{


static thread_local Thread* t_thread = nullptr;//定义线程局部变量
static thread_local std::string t_thread_name = "UNKNOWN";

static dc::Logger::LoggerPtr g_logger = DC_LOG_NAME("system");

//信号量，生产者消费者模型
Semaphore::Semaphore(uint32_t count){
	if(sem_init(&m_semaphore, 0, count)){
		throw std::logic_error("sem_init error");
	}

}
Semaphore::~Semaphore(){
	sem_destroy(&m_semaphore);

}
void Semaphore::wait(){
	if(sem_wait(&m_semaphore))
		throw std::logic_error("sem_wait error");
}
void Semaphore::notify(){
	if(sem_post(&m_semaphore)) {
		throw std::logic_error("sem_post error");
	}
}



Thread* Thread::GetThis(){
	return t_thread;
}

const std::string& Thread::GetName(){
	return t_thread_name;
}
void Thread::SetName(const std::string& name){
	if(name.empty())return;
	if(t_thread){
		t_thread->m_name = name;
	}
	t_thread_name = name;
}

Thread::Thread(std::function<void()> cb, const std::string& name)
	:m_cb(cb),m_name(name)
{
	if(name.empty()){
		m_name = "UNKNOWN";
	}
	int rt = pthread_create(&m_thread, nullptr, &Thread::run, this);

	if(rt) {
		DC_LOG_ERROR(g_logger) << "pthread_create thread fail, rt = "
			<< " name = " << name;
		throw std::logic_error("pthread_create error");
	}
	//	DC_LOG_INFO(g_logger) << "thread has constructed completely";	
		
	m_semaphore.wait();//等待线程运行后,解除阻塞
}
Thread::~Thread(){
	if(m_thread){
		pthread_detach(m_thread);//进行线程分离,不用父线程回收
	}
}


void Thread::join()
{
	if(m_thread) {
		int rt = pthread_join(m_thread, nullptr);//回收当前线程
		if(rt) {
			DC_LOG_ERROR(g_logger) << "pthread_join thread fail, rt = " << rt << " name = " << m_name;
			throw std::logic_error("pthread_join error");
			
		}
		m_thread = 0;
	}
}

void* Thread::run(void *arg){
	Thread* thread = (Thread*) arg;
	t_thread = thread;
	t_thread_name = thread->m_name; 
	thread->m_id = dc::GetThreadId();
	pthread_setname_np(pthread_self(), thread->m_name.substr(0,15).c_str());
	std::function<void()> cb;
	cb.swap(thread->m_cb);
	thread->m_semaphore.notify();//线程初始化完成之后唤醒信号量,确保线程创建成功一定在运行
	cb();
	return 0;
}
}
