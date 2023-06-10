CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

project(dc)

include(cmake/utils.cmake)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -O0 -ggdb -std=c++14 -Wall -Wno-deprecated -Werror -Wno-unused-function -lyaml-cpp -Wno-builtin-macro-redefined ")


include_directories(.)
include_directories(/usr/local/include)
link_directories(/usr/local/lib)

find_library(YAMLCPP yaml-cpp)
find_library(PTHREAD pthread)
message("***",${YAMLCPP})
set(LIB_SRC
	dc/log.cc
	dc/util.cc
	dc/config.cc
	dc/thread.cc
	dc/fiber.cc
	dc/scheduler.cc
	dc/ioManager.cc
	dc/timer.cc
	dc/hook.cc
	dc/fd_manager.cc
	dc/address.cc
	dc/socket.cc
	dc/bytearray.cc
	)

add_library(dc SHARED ${LIB_SRC})
force_redefine_file_macro_for_sources(dc) #__FILE__
#add_library(dc_static STATIC ${LIB_SRC})
#SET_TARGET_PROPERTIES (dc_static PROPERTIES OUTPUT_NAME "dc")

set(LIB_LIB
	dc
	pthread
	${YAMLCPP}
	)
add_executable(test tests/test.cc)
add_dependencies(test dc)
force_redefine_file_macro_for_sources(test) #__FILE__
target_link_libraries(test ${LIB_LIB})

add_executable(test_config tests/test_config.cc)
add_dependencies(test_config dc)
force_redefine_file_macro_for_sources(test_config) #__FILE__
target_link_libraries(test_config dc ${LIB_LIB})

add_executable(test_thread tests/test_thread.cc)
add_dependencies(test_thread dc)
force_redefine_file_macro_for_sources(test_thread) #__FILE__
target_link_libraries(test_thread dc ${LIB_LIB})


add_executable(test_util tests/test_util.cc)
add_dependencies(test_util dc)
force_redefine_file_macro_for_sources(test_util) #__FILE__
target_link_libraries(test_util dc ${LIB_LIB})

add_executable(test_fiber tests/test_fiber.cc)
add_dependencies(test_fiber dc)
force_redefine_file_macro_for_sources(test_fiber) #__FILE__
target_link_libraries(test_fiber dc ${LIB_LIB})

add_executable(test_scheduler tests/test_scheduler.cc)
add_dependencies(test_scheduler dc)
force_redefine_file_macro_for_sources(test_scheduler) #__FILE__
target_link_libraries(test_scheduler dc ${LIB_LIB})

add_executable(test_iomanager tests/test_iomanager.cc)
target_link_libraries(test_iomanager dc ${LIB_LIB})

add_executable(test_log tests/test_log.cc)
target_link_libraries(test_log dc ${LIB_LIB})

add_executable(test_hook tests/test_hook.cc)
target_link_libraries(test_hook dc ${LIB_LIB})

add_executable(test_address tests/test_address.cc)
target_link_libraries(test_address dc ${LIB_LIB})


add_executable(test_bytearray tests/test_bytearray.cc)
target_link_libraries(test_bytearray dc ${LIB_LIB})

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)








