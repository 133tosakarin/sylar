# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tohsakarin/Documents/sylar/sylar_server_frame

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tohsakarin/Documents/sylar/sylar_server_frame

# Include any dependencies generated for this target.
include CMakeFiles/test_conn.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_conn.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_conn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_conn.dir/flags.make

CMakeFiles/test_conn.dir/tests/test_conn.cc.o: CMakeFiles/test_conn.dir/flags.make
CMakeFiles/test_conn.dir/tests/test_conn.cc.o: tests/test_conn.cc
CMakeFiles/test_conn.dir/tests/test_conn.cc.o: CMakeFiles/test_conn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tohsakarin/Documents/sylar/sylar_server_frame/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_conn.dir/tests/test_conn.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_conn.dir/tests/test_conn.cc.o -MF CMakeFiles/test_conn.dir/tests/test_conn.cc.o.d -o CMakeFiles/test_conn.dir/tests/test_conn.cc.o -c /home/tohsakarin/Documents/sylar/sylar_server_frame/tests/test_conn.cc

CMakeFiles/test_conn.dir/tests/test_conn.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_conn.dir/tests/test_conn.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tohsakarin/Documents/sylar/sylar_server_frame/tests/test_conn.cc > CMakeFiles/test_conn.dir/tests/test_conn.cc.i

CMakeFiles/test_conn.dir/tests/test_conn.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_conn.dir/tests/test_conn.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tohsakarin/Documents/sylar/sylar_server_frame/tests/test_conn.cc -o CMakeFiles/test_conn.dir/tests/test_conn.cc.s

# Object files for target test_conn
test_conn_OBJECTS = \
"CMakeFiles/test_conn.dir/tests/test_conn.cc.o"

# External object files for target test_conn
test_conn_EXTERNAL_OBJECTS =

bin/test_conn: CMakeFiles/test_conn.dir/tests/test_conn.cc.o
bin/test_conn: CMakeFiles/test_conn.dir/build.make
bin/test_conn: lib/libdc.so
bin/test_conn: /usr/lib/x86_64-linux-gnu/libyaml-cpp.so
bin/test_conn: CMakeFiles/test_conn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tohsakarin/Documents/sylar/sylar_server_frame/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/test_conn"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_conn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_conn.dir/build: bin/test_conn
.PHONY : CMakeFiles/test_conn.dir/build

CMakeFiles/test_conn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_conn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_conn.dir/clean

CMakeFiles/test_conn.dir/depend:
	cd /home/tohsakarin/Documents/sylar/sylar_server_frame && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tohsakarin/Documents/sylar/sylar_server_frame /home/tohsakarin/Documents/sylar/sylar_server_frame /home/tohsakarin/Documents/sylar/sylar_server_frame /home/tohsakarin/Documents/sylar/sylar_server_frame /home/tohsakarin/Documents/sylar/sylar_server_frame/CMakeFiles/test_conn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_conn.dir/depend

