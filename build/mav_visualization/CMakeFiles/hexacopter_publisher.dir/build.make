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
CMAKE_SOURCE_DIR = /home/nuc/yi/vins/vins_catkin_ws/src/mav_trajectory_generation/mav_visualization

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/yi/vins/vins_catkin_ws/build/mav_visualization

# Include any dependencies generated for this target.
include CMakeFiles/hexacopter_publisher.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hexacopter_publisher.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hexacopter_publisher.dir/flags.make

CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o: CMakeFiles/hexacopter_publisher.dir/flags.make
CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o: /home/nuc/yi/vins/vins_catkin_ws/src/mav_trajectory_generation/mav_visualization/src/hexacopter_publisher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/mav_visualization/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o -c /home/nuc/yi/vins/vins_catkin_ws/src/mav_trajectory_generation/mav_visualization/src/hexacopter_publisher.cpp

CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/yi/vins/vins_catkin_ws/src/mav_trajectory_generation/mav_visualization/src/hexacopter_publisher.cpp > CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.i

CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/yi/vins/vins_catkin_ws/src/mav_trajectory_generation/mav_visualization/src/hexacopter_publisher.cpp -o CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.s

CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o.requires:

.PHONY : CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o.requires

CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o.provides: CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o.requires
	$(MAKE) -f CMakeFiles/hexacopter_publisher.dir/build.make CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o.provides.build
.PHONY : CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o.provides

CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o.provides.build: CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o


# Object files for target hexacopter_publisher
hexacopter_publisher_OBJECTS = \
"CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o"

# External object files for target hexacopter_publisher
hexacopter_publisher_EXTERNAL_OBJECTS =

/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: CMakeFiles/hexacopter_publisher.dir/build.make
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libeigen_catkin.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libeigen_conversions.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/liborocos-kdl.so.1.3.0
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/libroscpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/librosconsole.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/liblog4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/librostime.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/libcpp_common.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libmav_visualization.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libeigen_catkin.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libeigen_conversions.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/liborocos-kdl.so.1.3.0
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/libroscpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/librosconsole.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/liblog4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/librostime.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /opt/ros/indigo/lib/libcpp_common.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher: CMakeFiles/hexacopter_publisher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/mav_visualization/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hexacopter_publisher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hexacopter_publisher.dir/build: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_visualization/hexacopter_publisher

.PHONY : CMakeFiles/hexacopter_publisher.dir/build

CMakeFiles/hexacopter_publisher.dir/requires: CMakeFiles/hexacopter_publisher.dir/src/hexacopter_publisher.cpp.o.requires

.PHONY : CMakeFiles/hexacopter_publisher.dir/requires

CMakeFiles/hexacopter_publisher.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hexacopter_publisher.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hexacopter_publisher.dir/clean

CMakeFiles/hexacopter_publisher.dir/depend:
	cd /home/nuc/yi/vins/vins_catkin_ws/build/mav_visualization && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/yi/vins/vins_catkin_ws/src/mav_trajectory_generation/mav_visualization /home/nuc/yi/vins/vins_catkin_ws/src/mav_trajectory_generation/mav_visualization /home/nuc/yi/vins/vins_catkin_ws/build/mav_visualization /home/nuc/yi/vins/vins_catkin_ws/build/mav_visualization /home/nuc/yi/vins/vins_catkin_ws/build/mav_visualization/CMakeFiles/hexacopter_publisher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hexacopter_publisher.dir/depend

