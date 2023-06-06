#ifndef __DC_LOG_H__
#define __DC_LOG_H__
#include<string>
#include<stdint.h>
#include<list>
#include<fstream>
#include<sstream>
#include<memory>
#include<vector>
#include<map>
#include<iostream>
#include<functional>
#include<pthread.h>
#include<cstring>
#include<stdarg.h>
#include"singleton.h"
#include"util.h"
#include"thread.h"



/*
    宏函数，用于在logEventWrap析构时输出日志信息，构造一个匿名的LogEventWrap对象，完成构造之后立即析构，将日志写入
*/
#define DC_LOG_LEVEL(logger,level) \
    if(logger->getLevel() <=level) \
        dc::LogEventWrap(dc::LogEvent::LogEventPtr(new dc::LogEvent(logger,level,__FILE__,__LINE__,0,dc::GetThreadId(),\
            dc::GetFiberId(),time(0), dc::Thread::GetName()))).getSstream()

#define DC_LOG_DEBUG(logger) DC_LOG_LEVEL(logger,dc::LogLevel::DEBUG)
#define DC_LOG_INFO(logger) DC_LOG_LEVEL(logger,dc::LogLevel::INFO)
#define DC_LOG_WARN(logger) DC_LOG_LEVEL(logger,dc::LogLevel::WARN)
#define DC_LOG_ERROR(logger) DC_LOG_LEVEL(logger,dc::LogLevel::ERROR)
#define DC_LOG_FATAL(logger) DC_LOG_LEVEL(logger,dc::LogLevel::FATAL)
//#define DC_LOG_DEBUG(logger) DC_LOG_LEVEL(logger,DC::LogLevel::UNKNOWN)

/*
    __VA_ARGS__是可变参数宏变量
    宏函数，用来调用format方法
*/
#define DC_LOG_FMT_LEVEL(logger, level, fmt, ...) \
    if(logger->getLevel()<=level) \
        dc::LogEventWrap(dc::LogEvent::LogEventPtr(new dc::LogEvent(logger,level, \
        __FILE__,__LINE__,0,dc::GetThreadId(), \
        dc::GetFiberId(),time(0), dc::Thread::GetName()))).getEvent()->format(fmt,__VA_ARGS__)

#define DC_LOG_FMT_DEBUG(logger,fmt,...) DC_LOG_FMT_LEVEL(logger,dc::LogLevel::DEBUG,fmt,__VA_ARGS__)
#define DC_LOG_FMT_INFO(logger,fmt,...) DC_LOG_FMT_LEVEL(logger,dc::LogLevel::INFO,fmt,__VA_ARGS__)
#define DC_LOG_FMT_WARN(logger,fmt,...) DC_LOG_FMT_LEVEL(logger,dc::LogLevel::WARN,fmt,__VA_ARGS__)
#define DC_LOG_FMT_ERROR(logger,fmt,...) DC_LOG_FMT_LEVEL(logger,dc::LogLevel::ERROR,fmt,__VA_ARGS__)
#define DC_LOG_FMT_FATAL(logger,fmt,...) DC_LOG_FMT_LEVEL(logger,dc::LogLevel::FATAL,fmt,__VA_ARGS__)

/*
    宏函数，用于获取loggerManager的rootLogger
*/
//GetInstance拿到的是loggerManager的原始指针,此指针不需要销毁，在singleton对象中以非new形式创建
#define DC_LOG_ROOT() dc::loggerManager::GetInstance()->getRoot()

#define DC_LOG_NAME(name) dc::loggerManager::GetInstance()->getLogger(name)


namespace dc{
	using std::stringstream;
    class Logger;
	class LoggerManager;
     //日志级别
    class LogLevel{
    public:
        
        enum Level{
            UNKNOWN = 0,
            DEBUG = 1,
            INFO = 2,
            WARN = 3,
            ERROR = 4,
            FATAL  = 5
        };
        //把级别输出成字符串
        static const char * ToString(Level level);
        static LogLevel::Level FromStr(const std::string& v);
    };
    //日志事件，用于输出日志的各种事件,日期时间，行号，线程号等信息
    class LogEvent{
    public:
        typedef std::shared_ptr<LogEvent> LogEventPtr;
        LogEvent(std::shared_ptr<Logger>logger,
				LogLevel::Level level = LogLevel::UNKNOWN,const char *filename = 0,
				int32_t line = 0,
				uint32_t elapse = 0,
				uint32_t threadId = 0
                ,uint32_t fiberId = 0,
				uint32_t time  = 0
				,const std::string& thread_name = "");
        const char *getFilename()const {return m_filename;}
        int32_t getLine()const {return m_line;}
        uint32_t getElapse()const {return m_elapse;}
        uint32_t getThreadId()const {return m_threadId;}
        uint32_t getFiberId()const {return m_fiberId;}
        uint32_t getTime()const {return m_time;}
		const std::string& getThreadName() const {return m_threadName;}
        const std::string getContent()const {return m_ss.str();}
        std::stringstream &getSstream() {return m_ss;}
        std::shared_ptr<Logger> getLogger()const {return m_logger;}
        LogLevel::Level getLevel() const {return m_level;}
        void setLine(int32_t line){m_line = line;}
        void setElapse(int32_t elapse){m_elapse = elapse;}
        void setThreadId(int32_t threadId){m_threadId = threadId;}
        void setFiberId(int32_t fiberId){m_fiberId = fiberId;}
        void setTime(int32_t time){m_time = time;}
        void format(const char *fmt, ...);
        void format(const char*fmt,va_list al);
        ~LogEvent();
    private:
        const char * m_filename = nullptr;//文件名
        int32_t m_line = 0;//行号
        uint32_t m_elapse = 0;//程序启动开始到现在的毫秒数
        uint32_t m_threadId = 0;//线程号
        uint32_t m_fiberId = 0;//协程id
        uint64_t m_time;//时间戳
        std::stringstream m_ss;//消息流内容
        std::shared_ptr<Logger> m_logger;
        LogLevel::Level m_level;
		std::string m_threadName="";
    };
    //在析构时将日志信息写入
    class LogEventWrap{
    public:
        LogEventWrap(LogEvent::LogEventPtr event);
        ~LogEventWrap();
        std::stringstream& getSstream();
        LogEvent::LogEventPtr getEvent()const {return m_event;}
    private:
        LogEvent::LogEventPtr m_event;
    };
   
    


    //日志格式器，用于格式化字符串
    class LogFormatter{
    public:
        typedef std::shared_ptr<LogFormatter> LogFormatterPtr;
        std::string format(std::shared_ptr<Logger> plgtr,LogEvent::LogEventPtr event,LogLevel::Level level);
        std::ostream& format(std::ostream& ofs, std::shared_ptr<Logger> plgtr,LogEvent::LogEventPtr event,LogLevel::Level level);
        LogFormatter(const std::string & pattern);
    public:
        //纯虚函数，派生类完成各种事件的解析功能，然后输出到Logger中，将各种事件分离出来，灵活使用
        class FormatItem{
        public:
            using ptr = std::shared_ptr<FormatItem>;
            virtual ~FormatItem(){}
            virtual void format(std::shared_ptr<Logger> plgtr,std::ostream &os,LogEvent::LogEventPtr event,LogLevel::Level level) = 0;
        };
        void init();
		bool isError() const {return m_error;}
	const std::string getPattern()const {return m_pattern;}
    //此处用于定义属性
    private:
        std::string m_pattern;
        std::vector<FormatItem::ptr>m_items;
		bool m_error = false;

    };
    

    //日志输出地，是输出控制台和文件地的纯虚类，子类需要实现log方法将日志输出到文件流或控制台中
    class LogAppender{
    friend class Logger;
	public:
		using MutexType = Spinlock;
        using LogAppenderPtr = std::shared_ptr<LogAppender>;
		LogAppender() : m_level(LogLevel::UNKNOWN)
		{

		}
        virtual ~LogAppender(){}
        virtual std::string toYamlString() = 0;
		virtual void log(std::shared_ptr<Logger> plgtr,LogLevel::Level level , LogEvent::LogEventPtr event) = 0;
		void setFormatter(LogFormatter::LogFormatterPtr formatter);
        LogFormatter::LogFormatterPtr getFormatter();
		void setLevel(LogLevel::Level level){m_level = level;}
    	
	protected:
        bool m_hasFormatter = false;
		LogLevel::Level m_level = LogLevel::DEBUG;
        LogFormatter::LogFormatterPtr m_formatter;
		MutexType m_mutex;
    };
    //输出到控制台的Apender
    class StdOutLogAppender : public LogAppender{
    public:
        using ptr = std::shared_ptr<StdOutLogAppender>;
        void log(std::shared_ptr<Logger> plgtr,LogLevel::Level level,LogEvent::LogEventPtr event) override;
        virtual std::string toYamlString() override;
        
    private:
		
    };
    //输出到文件的Appender
    class FileLogAppender : public LogAppender{
    public:
        using ptr = std::shared_ptr<FileLogAppender>;
        FileLogAppender(const std::string& filename);
        void log(std::shared_ptr<Logger> plgtr,LogLevel::Level level,LogEvent::LogEventPtr event) override;
        virtual std::string toYamlString() override;
        ~FileLogAppender() override;
        //重新打开文件成功，返回true
        bool reopen();
    private:
        std::string m_filename;
        std::ofstream m_filestream;
		uint64_t m_lastTime;
    };


    
        //日志输出器，通过对应的事件级别输出不同的日志信息
    class Logger:public std::enable_shared_from_this<Logger>{
    friend class LoggerManager;
	public:
		using MutexType = Spinlock;
        typedef std::shared_ptr<Logger> LoggerPtr;
        
        Logger(const std::string &name = "root");
        void log(LogLevel::Level level,LogEvent::LogEventPtr ptr);

        void debug(LogEvent::LogEventPtr event);
        void info(LogEvent::LogEventPtr event);
        void warn(LogEvent::LogEventPtr event);
        void error(LogEvent::LogEventPtr event);
        void fatal(LogEvent::LogEventPtr event);
        void addAppender(LogAppender::LogAppenderPtr appender);
        void delAppender(LogAppender::LogAppenderPtr appender);
		void clearAppenders();
		void setFormatter(LogFormatter::LogFormatterPtr ptr);
		void setFormatter(const std::string& val);
        LogLevel::Level getLevel() const { return m_level;}
        void setLevel(LogLevel::Level level){m_level = level;}
        const std::string& getName() const {return m_name;}
		LogFormatter::LogFormatterPtr getFormatter()const {return m_formatter;}
   		std::string toYamlString();
   private:
        std::string m_name;     //日志名称
        LogLevel::Level m_level;//日志级别
        std::list<LogAppender::LogAppenderPtr> m_appenders;//Appender集合
        LogFormatter::LogFormatterPtr m_formatter;
    	LoggerPtr m_root;
		MutexType m_mutex;	
	};

    class LoggerManager{
    public:
		using MutexType = Spinlock;
        LoggerManager();
        Logger::LoggerPtr getLogger(std::string loggerName);
        void init();
        Logger::LoggerPtr getRoot()const {return m_rootLogger;}
    	std::string toYamlString();
	private:
        std::map<std::string, Logger::LoggerPtr>m_logger;
        Logger::LoggerPtr m_rootLogger;
		MutexType m_mutex;
    };

	//定义从LoggerManager的单例模式类型别名
    using loggerManager = typename dc::Singleton<LoggerManager>;
    //typedef dc::Singleton<LoggerManager> loggerManager;
}
#endif
