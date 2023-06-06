#ifndef __DC_UTIL_H__
#define __DC_UTIL_H__
#include<pthread.h>
#include<sys/syscall.h>
#include<stdio.h>
#include<unistd.h>
#include<stdint.h>
#include<vector>
#include<string>

namespace dc{

pid_t GetThreadId();

uint32_t GetFiberId();

//栈区的信息,将栈中的内容放入vector数组中
void Backtrace(std::vector<std::string>& bt, int size = 64, int skip = 1);
//直接把栈中的内容转为string
std::string BacktraceToString(int size = 64, int skip = 0, const std::string& prefix = "");

uint64_t GetCurrentMs();
uint64_t GetCurrentUs();

}
#endif
