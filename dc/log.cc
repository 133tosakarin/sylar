#include"log.h"
#include"util.h"
#include"config.h"

namespace dc
{
	using std::stringstream;
	/*
	   Level的toString
	   */
	const char* LogLevel::ToString(LogLevel::Level level)
	{
		switch(level)
		{
			case LogLevel::DEBUG:
				return "DEBUG";
			case LogLevel::INFO:
				return "INFO";
			case LogLevel::WARN:
				return "WARN";
			case LogLevel::ERROR:
				return "ERROR";
			case LogLevel::FATAL:
				return "FATAL";
			case LogLevel::UNKNOWN:
				return "UNKNOWN";
		}
		return "UNKNOWN";
	}

    LogLevel::Level LogLevel::FromStr(const std::string& val){
    #define XX(name, str) \
        if(val == #str){ \
            return LogLevel::name; \
        }
        XX(DEBUG,debug);
        XX(INFO,info);
        XX(WARN,warn);
        XX(ERROR,error);
        XX(UNKNOWN,unknown);
        
		XX(DEBUG,DEBUG);
		XX(INFO,INFO);
        XX(WARN,WARN);
        XX(ERROR,ERROR);
        XX(FATAL,FATAL);
		//XX(UNKNOWN,UNKNOWN);
        //XX(UNKNOWN);
        return LogLevel::UNKNOWN;
    #undef XX
    }
	/*
	   日志事件LogEvent
	   */
	LogEvent::LogEvent(std::shared_ptr<Logger>logger,
			LogLevel::Level level,
			const char *filename,
			int32_t line,
			uint32_t elapse,
			uint32_t threadId,
			uint32_t fiberId,
			uint32_t time,
			const std::string& thread_name)
			:m_filename(filename)
			,m_line(line),m_elapse(elapse)
			,m_threadId(threadId)
			,m_fiberId(fiberId)
			,m_time(time)
			,m_logger(logger)
			,m_level(level)
			,m_threadName(thread_name) {
				//std::cout << "in constructor name = " <<  m_threadName << std::endl;
			}
	LogEvent::~LogEvent(){ 
	}

	LogEventWrap::LogEventWrap(LogEvent::LogEventPtr event):m_event(event){}
	LogEventWrap::~LogEventWrap(){
		m_event->getLogger()->log(m_event->getLevel(),m_event);
	}
	std::stringstream& LogEventWrap::getSstream(){return m_event->getSstream();}

	/*
	   va_list解决变参的宏，用于获取不定参数
	   va_start读取可变参数的过程其实就是在栈区中，使用指针,
	   遍历栈区中的参数列表,从低地址到高地址一个一个地把参数内容读出来的过程·
	   */
	void LogEvent::format(const char *fmt, ...){
		va_list al;//声明al是个可变参数列表，实际上是个char指针
		va_start(al,fmt);//读取可变参数，保存可变参数列表,fmt代表变参前一个参数
		format(fmt,al);
		va_end(al);//结束可变参数处理
	}
	void LogEvent::format(const char*fmt,va_list al){
		char *buf = nullptr;
		//int vasprintf(char **buf,const char *,va_list),用于将将格式化数据从可变参数中写入缓冲区
		int len = vasprintf(&buf,fmt,al);
		if(len != -1){
			m_ss << std::string(buf,len);
			free(buf);
		}
	}


	/*
	   日志输出器Logger的实现
	   */
	/*
	   %p：输出日志信息的优先级。即DEBUG，INFO。WARN。ERROR。FATAL。

	   %d：输出日志时间点的日期或时间，默认格式为ISO8601。也能够在其后指定格式，如：%d{yyyy/MM/dd HH:mm:ss,SSS}。


	   %r：输出自应用程序启动到输出该log信息耗费的毫秒数。
	   %t：输出产生该日志事件的线程名。
	   %l：输出日志事件的发生位置。相当于%c.%M(%F:%L)的组合，包含类全名、方法、文件名称以及在代码中的行数。比如：test.TestLog4j.main(TestLog4j.java:10)。
	   %c：输出日志信息所属的类目，通常就是所在类的全名。
	   %M：输出产生日志信息的方法名。


	   %F：输出日志消息产生时所在的文件名称称。
	   %L:：输出代码中的行号。
	   %m:：输出代码中指定的详细日志信息。
	   %n：输出一个回车换行符。Windows平台为"rn"，Unix平台为"n"。
	   %x：输出和当前线程相关联的NDC(嵌套诊断环境)，尤其用到像java servlets这种多客户多线程的应用中。
	   %%：输出一个"%"字符。
	   */
	Logger::Logger(const std::string &name):m_name(name),m_level(LogLevel::INFO){
		m_formatter.reset(new LogFormatter("%d{%Y-%m-%d %H:%M:%S}%T%t%T%N%T%F%T[%p]%T[%c]%T%f:%l%T%m%n"));
	}

	void Logger::setFormatter(LogFormatter::LogFormatterPtr ptr){
		MutexType::Lock lock(m_mutex);
		m_formatter = ptr;
		//若appender中的日志输出地没有formatter的话就设置为和Logger的formatter一样
		//LogAppender::LogAppenderPtr temp;
		for(auto& i : m_appenders){
			MutexType::Lock lk(i->m_mutex);
			if(!i->m_hasFormatter){
				i->m_formatter = m_formatter;
			}
		}
	}
	void Logger::setFormatter(const std::string& val){
		dc::LogFormatter::LogFormatterPtr new_val(new dc::LogFormatter(val));
		if(new_val->isError()){
			std::cout<< "Logger setFormatter name=" << m_name
				<< " value=" << val << "invalid formatter" << std::endl;
			return;
		}
		//m_formatter = new_val;
		setFormatter(new_val);
	}
	void Logger::log(LogLevel::Level level,LogEvent::LogEventPtr event)
	{
	if(level>=m_level)
		{
			
			auto self = shared_from_this();
			MutexType::Lock lock(m_mutex);
			if(!m_appenders.empty()){
				for(auto & it : m_appenders)
				{
					it->log(self,level,event);//有logEvent事件出现，并且等级比我所需的level高，则使用LogAppender输出
				}
			}else if(m_root){
				m_root->log(level,event);
			}
		}
	}

	void Logger::debug(LogEvent::LogEventPtr event)
	{
		log(LogLevel::DEBUG,event);
	}
	void Logger::info(LogEvent::LogEventPtr event)
	{
		log(LogLevel::INFO,event);
	}
	void Logger::warn(LogEvent::LogEventPtr event)
	{
		log(LogLevel::WARN,event);
	}
	void Logger::error(LogEvent::LogEventPtr event)
	{
		log(LogLevel::ERROR,event);
	}
	void Logger::fatal(LogEvent::LogEventPtr event)
	{
		log(LogLevel::FATAL,event);
	}

	void Logger::addAppender(LogAppender::LogAppenderPtr appender)
	{
		MutexType::Lock lock(m_mutex);
		if(!appender->getFormatter()){
			MutexType::Lock lk(appender->m_mutex);
			appender->m_formatter = m_formatter;
			
		}
		m_appenders.push_back(appender);
	}
	void Logger::delAppender(LogAppender::LogAppenderPtr appender)
	{
		for(auto it = m_appenders.begin();it!=m_appenders.end();it++)
		{
			if(*it ==appender)
			{
				m_appenders.erase(it);
				break;
			}
		}
	}

	void Logger::clearAppenders(){
		m_appenders.clear();
	}
	std::string Logger::toYamlString(){
		MutexType::Lock lock(m_mutex);
		YAML::Node node;
		node["name"] = m_name;
		if(m_level != LogLevel::UNKNOWN)
			node["level"] = LogLevel::ToString(m_level);
		if(m_formatter){
			node["formatter"] = m_formatter->getPattern();

		}
		for(auto& i : m_appenders){
			node["appenders"].push_back(YAML::Load(i->toYamlString()));
		}
		std::stringstream ss;
		ss << node;
		std::cout << ss.str();
		return ss.str();
	}
	/*
	   loggerManager
	   */
	//构造函数中初始化根logger,并初始放置一个Stdoutappender
	LoggerManager::LoggerManager(){
		m_rootLogger.reset(new Logger);
		m_rootLogger->addAppender(LogAppender::LogAppenderPtr(new StdOutLogAppender));
		m_logger[m_rootLogger->m_name] = m_rootLogger;
		init();
	}
	Logger::LoggerPtr LoggerManager::getLogger(std::string loggerName){
		MutexType::Lock lock(m_mutex);
		auto it = m_logger.find(loggerName);
		if(it != m_logger.end())
		{
			return it->second;
		}
		//若没有appender则创建一个和rootLogger一样的logger
		Logger::LoggerPtr logger(new Logger(loggerName));
		logger->m_root = m_rootLogger;
		m_logger[loggerName] = logger;
		return logger;

	}
	std::string LoggerManager::toYamlString(){
		YAML::Node node;
		MutexType::Lock lock(m_mutex);
		for(auto& it : m_logger){
			node.push_back(YAML::Load(it.second->toYamlString()));
		}
		std::stringstream ss;
		ss << node;
		return ss.str();
	
	}
	struct LogAppenderDefine{
		int type = 0; //1 File, 2 StdOut
		std::string formatter;
		std::string file;
        LogLevel::Level level = LogLevel::UNKNOWN;
		bool operator==(const LogAppenderDefine & rhs) const {
			return type == rhs.type 
				&& formatter == rhs.formatter 
				&& file == rhs.file
				&& level == rhs.level;
		}


	};   
	struct LogDefine{
		std::string name;
		LogLevel::Level level = LogLevel::UNKNOWN;
		std::string formatter;
		std::vector<LogAppenderDefine> appenders;
		bool operator==(const LogDefine& rhs) const {
			return name  == rhs.name 
				&& formatter == rhs.formatter 
				&& level == rhs.level
				&& appenders == rhs.appenders;
		}

		bool operator<(const LogDefine& rhs) const {
			return name < rhs.name;
		}
	};
    
    template<>
    class LexicalCast<std::string,LogDefine>{
    public:
        LogDefine operator() (const std::string& v){
            YAML::Node node = YAML::Load(v);
            std::stringstream ss;
            LogDefine ld;
			if(!node["name"].IsDefined()){
				std::cout<<"log config error : name is null,"<< node << std::endl;
				throw std::logic_error("log config name is null");

			}
            ld.name = node["name"].as<std::string>();
            ld.level = LogLevel::FromStr(node["level"].IsDefined()? node["level"].as<std::string>():" ");
            if(node["formatter"].IsDefined()){
                ld.formatter = node["formatter"].as<std::string>();
            }
			//std::cout << " into here" << std::endl;
            if(node["appenders"].IsDefined()){
                for(size_t i = 0 ; i < node["appenders"].size(); ++i){
                    auto t = node["appenders"][i];
					//std::cout<< "type = " << t["type"] << "  "<<  "file is : " <<t["file"] << std::endl;
                    if(!t["type"].IsDefined()){
                        std::cout<< "log config error: appender type is null," << t << std::endl;
                        continue;
                    }
                    std::string type = t["type"].as<std::string>();
                    LogAppenderDefine lad;
                    if(type == "FileLogAppender"){

                        lad.type = 1;
                        if(!t["file"].IsDefined()){
                             std::cout<< "log config error: fileappender file is null," << t << std::endl;
                             continue;
                        }
                        lad.file = t["file"].as<std::string>();
                        if(t["formatter"].IsDefined()){
                            lad.formatter = t["formatter"].as<std::string>();
                        }

                    } else if(type == "StdOutLogAppender"){
                        lad.type =2;
						if(t["formatter"].IsDefined())
							lad.formatter = t["formatter"].as<std::string>();

                    }else{
                        std::cout<< " log config error: appender type is invalid," << t << std::endl;
						continue;
                    }
                    ld.appenders.push_back(lad);
                    
                }
            }
            return ld;
        }
    };

    template<>
    class LexicalCast<LogDefine,std::string>{
    public:
        std::string operator()(const LogDefine& v){
            YAML::Node node;
            std::stringstream ss;
            node["name"] = v.name;
         	if(v.level != LogLevel::UNKNOWN){
		 		node["level"] = dc::LogLevel::ToString(v.level);
 			}
			if(!v.formatter.empty())
				node["formatter"] = v.formatter;
            for(size_t i = 0 ; i < v.appenders.size() ; ++i){
                auto & t = v.appenders[i];
                YAML::Node nd;
                if(t.type == 1){
                    nd["type"] = "FileLogAppender";
                    nd["file"] = t.file;
                }else if(t.type == 2){
					//std::cout<< " I'm come in here" << std::endl;
                    nd["type"] = "StdOutLogAppender";
					nd["file"] = t.file;
                }
				nd["level"] = LogLevel::ToString(t.level);
                if(!t.formatter.empty()){
                    nd["formatter"] = t.formatter;
                }
                node["appenders"].push_back(nd);
            }
            ss << node;
            return ss.str();
        }
    };
    dc::ConfigVar<std::set<LogDefine>>::ptr g_log_define = dc::Config::Lookup("logs",std::set<LogDefine>(),"logs config");
	
	//全局对象又在main函数之前构造
	struct LogIniter{
		LogIniter(){
			g_log_define->addListener([](const std::set<LogDefine>& old_value,
						const std::set<LogDefine>& new_value){
				DC_LOG_INFO(DC_LOG_ROOT()) << "on_logger_conf_changed";
				//新增事件
				for(auto & i : new_value){
					auto it = old_value.find(i);
					dc::Logger::LoggerPtr logger;
					if(it == old_value.end()){
						//新增Logger
						logger = DC_LOG_NAME(i.name);
					}else{
						if( !(i == *it)){
						//修改logger
							logger = DC_LOG_NAME(i.name);
						}else
							continue;
					}
					std::cout << "set log level" << std::endl ;
					logger->setLevel(i.level);
					if(!i.formatter.empty()){
						logger->setFormatter(i.formatter);
					}
					logger->clearAppenders();
					for(auto & a : i.appenders){
						dc::LogAppender::LogAppenderPtr aptr;
						if(a.type == 1){
							aptr.reset(new FileLogAppender(a.file));
						}else if(a.type == 2){
							aptr.reset(new StdOutLogAppender);
						}
						aptr->setLevel(a.level);
						if(!i.formatter.empty()){
							LogFormatter::LogFormatterPtr fmt(new LogFormatter(i.formatter));
							if(fmt->isError()){
								std::cout<<	"log.name " << i.name << " appender type = " << a.type << " formater = " << a.formatter << " is invalid" << std::endl;
							}else
								aptr->setFormatter(fmt);
						}
						logger->addAppender(aptr);
					}
				}
					//删除,old中有而new中没有,逻辑删除，将日志级别设为最高
				for(auto & i : old_value){
					auto it =new_value.find(i);
					if(it == new_value.end()){
						auto logger = DC_LOG_NAME(i.name);
						logger->setLevel((LogLevel::Level)100);
						logger->clearAppenders();
					}
				}
			});
		}
	};
	static LogIniter __log_init;
	void LoggerManager::init(){

	}
	void LogAppender::setFormatter(LogFormatter::LogFormatterPtr formatter){
		MutexType::Lock lock(m_mutex);
		m_formatter = formatter;
		if(m_formatter){
			m_hasFormatter = true;
		}else{
			m_hasFormatter = false;
		}
	
	}

	LogFormatter::LogFormatterPtr LogAppender::getFormatter() {
		MutexType::Lock lock(m_mutex);
		return m_formatter;
	}
	/*
	   logAppender日志输出地以及子类的实现，主要由输出到控制台，和文件
	   */
	FileLogAppender::FileLogAppender(const std::string& filename):m_filename(filename)
	{
			reopen();
	}
	std::string FileLogAppender::toYamlString(){
		MutexType::Lock lock(m_mutex);
		YAML::Node node; 
		node["type"] = "FileLogAppender";

		node["file"] = m_filename;
		if(m_level != LogLevel::UNKNOWN)
			node["level"] = LogLevel::ToString(m_level);
		if(m_hasFormatter && m_formatter){
			node["formatter"] = m_formatter->getPattern();

		}
		std::stringstream ss;
		//std::cout << "write to file --------" << std::endl;
		ss << node;
		return ss.str();
	}
	void FileLogAppender::log(std::shared_ptr<Logger> plgtr,LogLevel::Level level,LogEvent::LogEventPtr event)
	{
		if(level>=m_level)
		{
			uint64_t now = time(0);
			if(now != m_lastTime) {
				reopen();
				m_lastTime = now;
			}
			MutexType::Lock lock(m_mutex);
			m_filestream<<m_formatter->format(plgtr,event,level);
		}
	}
	FileLogAppender::~FileLogAppender(){
		std::cout << "close file = " << m_filename   << std::endl;
		if(m_filestream.is_open())
			m_filestream.close();
	}
	bool FileLogAppender::reopen()
	{
		MutexType::Lock lock(m_mutex);
		if(m_filestream)
		{
			m_filestream.close();
		}
		m_filestream.open(m_filename);
		return m_filestream.is_open();
	}
	void StdOutLogAppender::log(std::shared_ptr<Logger> plgtr,LogLevel::Level level,LogEvent::LogEventPtr event)
	{
		if(level>=m_level)
		{
			MutexType::Lock lock(m_mutex);
			std::cout<<m_formatter->format(plgtr,event,level);
		}
	}
	std::string StdOutLogAppender::toYamlString(){
		YAML::Node node; 
		MutexType::Lock lock(m_mutex);
		node["type"] = "StdOutLogAppender";
		
		if(m_level != LogLevel::UNKNOWN)
			node["level"] = LogLevel::ToString(m_level);
		if(m_hasFormatter && m_formatter)
			node["formatter"] = m_formatter->getPattern();
		std::stringstream ss;
		ss << node;
		return ss.str();
	}

	/*
	   LogFormat的方法实现
	   */
	LogFormatter::LogFormatter(const std::string & pattern):m_pattern(pattern){
		init();
	}

	std::ostream& LogFormatter::format(std::ostream& ofs, std::shared_ptr<Logger> plgtr,LogEvent::LogEventPtr event,LogLevel::Level level){
		for(auto& it: m_items){
			it->format(plgtr,ofs,event,level);
		}
		return ofs;
	}
	std::string LogFormatter::format(std::shared_ptr<Logger> plgtr,LogEvent::LogEventPtr event,LogLevel::Level level)
	{
		std::stringstream ss;
		for(auto & it : m_items){
			it->format(plgtr,ss,event,level);
		}
		return ss.str();
	}
	class StringFormatItem :public LogFormatter::FormatItem{
		public:
			StringFormatItem(const std::string & str=""):m_string(str){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os, LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<m_string;
			}
		private:
			std::string m_string;
	};

	class MessageFormatItem :public LogFormatter::FormatItem{
		public:
			MessageFormatItem(const std::string &str=""){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os, LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<event->getContent();
			}
	};
	class LevelFormatItem :public LogFormatter::FormatItem{
		public:
			LevelFormatItem(const std::string &str=""){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<LogLevel::ToString(level);
			}
	};

	class TabFormatItem :public LogFormatter::FormatItem{
		public:
			TabFormatItem(const std::string &str=""){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<"\t";
			}
		private:
			std::string m_string;
	};

	class ElapseFormatItem:public LogFormatter::FormatItem{
		public:
			ElapseFormatItem(const std::string &str=""){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<event->getElapse();
			}
	};

	class LogNameFormatItem:public LogFormatter::FormatItem{
		public:
			LogNameFormatItem(const std::string &str=""){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<< event->getLogger()->getName();
			}
	};

	class ThreadIdFormatItem:public LogFormatter::FormatItem{
		public:
			ThreadIdFormatItem(const std::string &str=""){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<event->getThreadId();
			}
	};

	class FiberIdFormatItem:public LogFormatter::FormatItem{
		public:
			FiberIdFormatItem(const std::string &str=""){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<event->getFiberId();
			}
	};
	
	
	class ThreadNameFormatItem : public LogFormatter::FormatItem{
		public:
			ThreadNameFormatItem (const std::string &str=""){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<event->getThreadName();
			}
	};
	

	
	class DateFormatItem:public LogFormatter::FormatItem{
		public:

			DateFormatItem(const std::string &format = "%Y-%m-%d %H:%M:%S"):m_format(format){
				if(m_format.empty())
				{
					m_format = "%Y-%m-%d %H:%M:%S";
				}
			}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				struct tm tm;
				time_t time =event->getTime();
				localtime_r(&time,&tm);
				char buf[64];
				strftime(buf,sizeof(buf),m_format.c_str(),&tm);
				os<<buf;
			}
		private:
			std::string m_format;
	};
	class FileNameFormatItem:public LogFormatter::FormatItem{
		public:
			FileNameFormatItem(const std::string &str){}
			void format(dc::Logger::LoggerPtr plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<event->getFilename();
			}
	};
	class LineNumFormatItem:public LogFormatter::FormatItem{
		public:
			LineNumFormatItem(const std::string &str){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<event->getLine()<<" ";
			}
	};
	class NewLineFormatItem:public LogFormatter::FormatItem{
		public:
			NewLineFormatItem(const std::string &str =""){}
			void format(std::shared_ptr<Logger> plgtr,std::ostream &os ,LogEvent::LogEventPtr event,LogLevel::Level level) override{
				os<<std::endl;
			}
	};   
	void LogFormatter::init()
	{
		//str,format,type
		std::vector<std::tuple<std::string,std::string,int>>vec;
		//解析pattern
		std::string cur_str;
		for(size_t i = 0; i < m_pattern.size(); ++i)
		{
			if(m_pattern[i] != '%')
			{
				cur_str.append(1,m_pattern[i]);
				continue;
			}
			if(i+1 < m_pattern.size() && m_pattern[i+1]=='%'){
				cur_str.append(1,'%');
				continue;
			}
			size_t j = i+1;
			int fmt_status = 0;//0,代表未开始格式化，1代表要进行格式化
			std::string tmp_str;//用于存储需要格式化的字符串
			std::string fmt_str;//格式化的字符串
			int fmt_begin = 0;
			while(j < m_pattern.size())
			{
				if(!fmt_status && (!isalpha(m_pattern[j]) 
							&& m_pattern[j]!='{') && m_pattern[j]!='}')
				{
					tmp_str = m_pattern.substr(i+1,j-i-1);
					break;
				}

				if(fmt_status == 0)
				{
					if(m_pattern[j] == '{')
					{
						//std::cout<<"*"<<tmp_str<<std::endl;
						tmp_str = m_pattern.substr(i+1,j-i-1);
						fmt_status = 1;//下次进行字符串解析

						fmt_begin = j;
						j++;
						continue;
					}
				}else if(fmt_status == 1)
				{
					if(m_pattern[j]=='}')
					{
						fmt_str = m_pattern.substr(fmt_begin+1,j-fmt_begin-1);
						fmt_status = 0;
						++j;
						break;
					}
				}
				j++;
				if(j == m_pattern.size()){
					if(tmp_str.empty())
						tmp_str = m_pattern.substr(i+1);
				}
			}
			if(fmt_status == 0){
				if(!cur_str.empty()){
					vec.push_back(std::make_tuple(cur_str,std::string(),0)); 
					cur_str.clear();
				}
				vec.push_back(std::make_tuple(tmp_str,fmt_str,1));
				i=j-1;
			}else if(fmt_status == 1) {
				std::cout<<"pattern parse error: "<<m_pattern << "-" << m_pattern.substr(i) << std::endl;
				m_error = true;
				vec.push_back(std::make_tuple("<<pattern_error>>",fmt_str,0));
			}
		}
		if(!cur_str.empty()){
			vec.push_back(std::make_tuple(cur_str,"",0)); 
		}

		static std::map<std::string,std::function<FormatItem::ptr(const std::string &str)> > str_format_item = {
#define XX(str,C) \
			{#str,[](const std::string& fmt) {return FormatItem::ptr(new C(fmt));}}
			XX(m,MessageFormatItem),
			XX(p,LevelFormatItem),
			XX(r,ElapseFormatItem),
			XX(c,LogNameFormatItem),
			XX(t,ThreadIdFormatItem),
			XX(l,LineNumFormatItem),
			XX(d,DateFormatItem),
			XX(f,FileNameFormatItem),
			XX(n,NewLineFormatItem),
			XX(T,TabFormatItem),
			XX(F,FiberIdFormatItem),
			XX(N, ThreadNameFormatItem)
#undef XX
		};  

		for(auto &i :vec){
			if(std::get<2>(i) == 0){
				m_items.push_back(LogFormatter::FormatItem::ptr(new StringFormatItem(std::get<0>(i))));
			}else{
				auto it = str_format_item.find(std::get<0>(i));
				if(it == str_format_item.end()){
					m_items.push_back(LogFormatter::FormatItem::ptr(new StringFormatItem("<<error_format %" + std::get<0>(i) +">>" )));
					m_error = true;
				} else{
					m_items.push_back(it->second(std::get<1>(i)));
				}
			}
			//std::cout<< std::get<0>(i) <<" - " << std::get<1>(i) <<" - " << std::get<2>(i) << std::endl;
		}
	}




}


