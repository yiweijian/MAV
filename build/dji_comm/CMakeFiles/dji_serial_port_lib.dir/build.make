# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nuc/yi/vins/vins_catkin_ws/src/mav_dji_ros_interface/dji_comm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/yi/vins/vins_catkin_ws/build/dji_comm

# Include any dependencies generated for this target.
include CMakeFiles/dji_serial_port_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dji_serial_port_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dji_serial_port_lib.dir/flags.make

CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o: CMakeFiles/dji_serial_port_lib.dir/flags.make
CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o: /home/nuc/yi/vins/vins_catkin_ws/src/mav_dji_ros_interface/dji_comm/src/dji_serial_port.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/dji_comm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o -c /home/nuc/yi/vins/vins_catkin_ws/src/mav_dji_ros_interface/dji_comm/src/dji_serial_port.cpp

CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/yi/vins/vins_catkin_ws/src/mav_dji_ros_interface/dji_comm/src/dji_serial_port.cpp > CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.i

CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/yi/vins/vins_catkin_ws/src/mav_dji_ros_interface/dji_comm/src/dji_serial_port.cpp -o CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.s

CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o.requires:

.PHONY : CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o.requires

CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o.provides: CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o.requires
	$(MAKE) -f CMakeFiles/dji_serial_port_lib.dir/build.make CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o.provides.build
.PHONY : CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o.provides

CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o.provides.build: CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o


# Object files for target dji_serial_port_lib
dji_serial_port_lib_OBJECTS = \
"CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o"

# External object files for target dji_serial_port_lib
dji_serial_port_lib_EXTERNAL_OBJECTS =

/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: CMakeFiles/dji_serial_port_lib.dir/build.make
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_sdk_lib.a
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /opt/ros/indigo/lib/libroscpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /opt/ros/indigo/lib/librosconsole.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /usr/lib/liblog4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /opt/ros/indigo/lib/librostime.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /opt/ros/indigo/lib/libcpp_common.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so: CMakeFiles/dji_serial_port_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/dji_comm/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dji_serial_port_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dji_serial_port_lib.dir/build: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libdji_serial_port_lib.so

.PHONY : CMakeFiles/dji_serial_port_lib.dir/build

CMakeFiles/dji_serial_port_lib.dir/requires: CMakeFiles/dji_serial_port_lib.dir/src/dji_serial_port.cpp.o.requires

.PHONY : CMakeFiles/dji_serial_port_lib.dir/requires

CMakeFiles/dji_serial_port_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dji_serial_port_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dji_serial_port_lib.dir/clean

CMakeFiles/dji_serial_port_lib.dir/depend:
	cd /home/nuc/yi/vins/vins_catkin_ws/build/dji_comm && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/yi/vins/vins_catkin_ws/src/mav_dji_ros_interface/dji_comm /home/nuc/yi/vins/vins_catkin_ws/src/mav_dji_ros_interface/dji_comm /home/nuc/yi/vins/vins_catkin_ws/build/dji_comm /home/nuc/yi/vins/vins_catkin_ws/build/dji_comm /home/nuc/yi/vins/vins_catkin_ws/build/dji_comm/CMakeFiles/dji_serial_port_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dji_serial_port_lib.dir/depend

