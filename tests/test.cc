#include"../dc/log.h"
#include"../dc/util.h"
int main(int argc,char **argv)
{
    dc::Logger::LoggerPtr logger(new dc::Logger);
    logger->addAppender(dc::LogAppender::LogAppenderPtr(new dc::StdOutLogAppender));
    dc::FileLogAppender::ptr fileAppender(new dc::FileLogAppender("log.txt"));
    logger->addAppender(fileAppender);

    dc::LogFormatter::LogFormatterPtr fmt(new dc::LogFormatter("%d%m%n"));
    fileAppender->setFormatter(fmt);
    fileAppender->setLevel(dc::LogLevel::ERROR);
    //dc::LogEvent::LogEventPtr event(new dc::LogEvent(logger,dc::LogLevel::INFO,__FILE__,__LINE__,0,1,2,time(0)));
    //logger->debug(event);
    std::cout<< "hello dc log" << std::endl;
	
    DC_LOG_INFO(logger)<< "test macro";
    DC_LOG_ERROR(logger)<<" test macro error";
    DC_LOG_FMT_INFO(logger,"test macro fmt info %s","tohsakarin");

    auto i = dc::loggerManager::GetInstance()->getLogger("xx");
    DC_LOG_INFO(i)<<"xxx";    
    return 0;
}
