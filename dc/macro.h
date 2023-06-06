#ifndef __DC_MACRO_H__
#define __DC_MACRO_H__
#include<string.h>
#include<execinfo.h>
#include<assert.h>

#if defined __GNUC__ || defined __llvm__
#	define DC_LICKLY(x) __builtin_expect(!!(x), 1)
#	define DC_UNLIKLY(x) __builtin_expect(!!(x), 0)
#else
#	define DC_LICKLY(x) (x)
#	define DC_UNLIKLY(x) (x)
#endif

#define DC_ASSERT(x) \
 if(DC_UNLIKLY(!(x))) { \
 	DC_LOG_ERROR(DC_LOG_ROOT()) << "ASSERTION: " #x \
		<< "\n backtrace:\n" \
		<< dc::BacktraceToString(100, 2, "    "); \
		assert(x); \
 	}

#define DC_ASSERT2(x,w) \
	if(DC_UNLIKLY(!(x))) { \
		DC_LOG_ERROR(DC_LOG_ROOT()) << "ASSERTION: " #x \
			<< "\n" << w \
			<< "\nbacktrace:\n" \
			<< dc::BacktraceToString(100, 2, "    "); \
			assert(x); \
	}
#endif
