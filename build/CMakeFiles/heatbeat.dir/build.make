# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/ubuntu/ds3-echoserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/ds3-echoserver/build

# Include any dependencies generated for this target.
include CMakeFiles/heatbeat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/heatbeat.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/heatbeat.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/heatbeat.dir/flags.make

CMakeFiles/heatbeat.dir/heartbeat.cpp.o: CMakeFiles/heatbeat.dir/flags.make
CMakeFiles/heatbeat.dir/heartbeat.cpp.o: /home/ubuntu/ds3-echoserver/heartbeat.cpp
CMakeFiles/heatbeat.dir/heartbeat.cpp.o: CMakeFiles/heatbeat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/ds3-echoserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/heatbeat.dir/heartbeat.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/heatbeat.dir/heartbeat.cpp.o -MF CMakeFiles/heatbeat.dir/heartbeat.cpp.o.d -o CMakeFiles/heatbeat.dir/heartbeat.cpp.o -c /home/ubuntu/ds3-echoserver/heartbeat.cpp

CMakeFiles/heatbeat.dir/heartbeat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/heatbeat.dir/heartbeat.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/ds3-echoserver/heartbeat.cpp > CMakeFiles/heatbeat.dir/heartbeat.cpp.i

CMakeFiles/heatbeat.dir/heartbeat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/heatbeat.dir/heartbeat.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/ds3-echoserver/heartbeat.cpp -o CMakeFiles/heatbeat.dir/heartbeat.cpp.s

CMakeFiles/heatbeat.dir/network_utils.cpp.o: CMakeFiles/heatbeat.dir/flags.make
CMakeFiles/heatbeat.dir/network_utils.cpp.o: /home/ubuntu/ds3-echoserver/network_utils.cpp
CMakeFiles/heatbeat.dir/network_utils.cpp.o: CMakeFiles/heatbeat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/ds3-echoserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/heatbeat.dir/network_utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/heatbeat.dir/network_utils.cpp.o -MF CMakeFiles/heatbeat.dir/network_utils.cpp.o.d -o CMakeFiles/heatbeat.dir/network_utils.cpp.o -c /home/ubuntu/ds3-echoserver/network_utils.cpp

CMakeFiles/heatbeat.dir/network_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/heatbeat.dir/network_utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/ds3-echoserver/network_utils.cpp > CMakeFiles/heatbeat.dir/network_utils.cpp.i

CMakeFiles/heatbeat.dir/network_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/heatbeat.dir/network_utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/ds3-echoserver/network_utils.cpp -o CMakeFiles/heatbeat.dir/network_utils.cpp.s

# Object files for target heatbeat
heatbeat_OBJECTS = \
"CMakeFiles/heatbeat.dir/heartbeat.cpp.o" \
"CMakeFiles/heatbeat.dir/network_utils.cpp.o"

# External object files for target heatbeat
heatbeat_EXTERNAL_OBJECTS =

heatbeat: CMakeFiles/heatbeat.dir/heartbeat.cpp.o
heatbeat: CMakeFiles/heatbeat.dir/network_utils.cpp.o
heatbeat: CMakeFiles/heatbeat.dir/build.make
heatbeat: CMakeFiles/heatbeat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ubuntu/ds3-echoserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable heatbeat"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/heatbeat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/heatbeat.dir/build: heatbeat
.PHONY : CMakeFiles/heatbeat.dir/build

CMakeFiles/heatbeat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/heatbeat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/heatbeat.dir/clean

CMakeFiles/heatbeat.dir/depend:
	cd /home/ubuntu/ds3-echoserver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/ds3-echoserver /home/ubuntu/ds3-echoserver /home/ubuntu/ds3-echoserver/build /home/ubuntu/ds3-echoserver/build /home/ubuntu/ds3-echoserver/build/CMakeFiles/heatbeat.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/heatbeat.dir/depend

