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
CMAKE_SOURCE_DIR = /home/nuc/yi/vins/vins_catkin_ws/src/rovio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/yi/vins/vins_catkin_ws/build/rovio

# Utility rule file for rovio_generate_messages_cpp.

# Include the progress variables for this target.
include CMakeFiles/rovio_generate_messages_cpp.dir/progress.make

CMakeFiles/rovio_generate_messages_cpp: /home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio/SrvResetToPose.h


/home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio/SrvResetToPose.h: /opt/ros/indigo/lib/gencpp/gen_cpp.py
/home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio/SrvResetToPose.h: /home/nuc/yi/vins/vins_catkin_ws/src/rovio/srv/SrvResetToPose.srv
/home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio/SrvResetToPose.h: /opt/ros/indigo/share/geometry_msgs/msg/Quaternion.msg
/home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio/SrvResetToPose.h: /opt/ros/indigo/share/std_msgs/msg/Empty.msg
/home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio/SrvResetToPose.h: /opt/ros/indigo/share/geometry_msgs/msg/Point.msg
/home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio/SrvResetToPose.h: /opt/ros/indigo/share/geometry_msgs/msg/Pose.msg
/home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio/SrvResetToPose.h: /opt/ros/indigo/share/gencpp/msg.h.template
/home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio/SrvResetToPose.h: /opt/ros/indigo/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/rovio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from rovio/SrvResetToPose.srv"
	catkin_generated/env_cached.sh /usr/bin/python /opt/ros/indigo/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/nuc/yi/vins/vins_catkin_ws/src/rovio/srv/SrvResetToPose.srv -Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg -p rovio -o /home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio -e /opt/ros/indigo/share/gencpp/cmake/..

rovio_generate_messages_cpp: CMakeFiles/rovio_generate_messages_cpp
rovio_generate_messages_cpp: /home/nuc/yi/vins/vins_catkin_ws/devel/include/rovio/SrvResetToPose.h
rovio_generate_messages_cpp: CMakeFiles/rovio_generate_messages_cpp.dir/build.make

.PHONY : rovio_generate_messages_cpp

# Rule to build all files generated by this target.
CMakeFiles/rovio_generate_messages_cpp.dir/build: rovio_generate_messages_cpp

.PHONY : CMakeFiles/rovio_generate_messages_cpp.dir/build

CMakeFiles/rovio_generate_messages_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rovio_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rovio_generate_messages_cpp.dir/clean

CMakeFiles/rovio_generate_messages_cpp.dir/depend:
	cd /home/nuc/yi/vins/vins_catkin_ws/build/rovio && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/yi/vins/vins_catkin_ws/src/rovio /home/nuc/yi/vins/vins_catkin_ws/src/rovio /home/nuc/yi/vins/vins_catkin_ws/build/rovio /home/nuc/yi/vins/vins_catkin_ws/build/rovio /home/nuc/yi/vins/vins_catkin_ws/build/rovio/CMakeFiles/rovio_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rovio_generate_messages_cpp.dir/depend

