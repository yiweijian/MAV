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
CMAKE_SOURCE_DIR = /home/nuc/yi/vins/vins_catkin_ws/src/ethzasl_msf/msf_core

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/yi/vins/vins_catkin_ws/build/msf_core

# Include any dependencies generated for this target.
include CMakeFiles/similaritytransform.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/similaritytransform.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/similaritytransform.dir/flags.make

CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o: CMakeFiles/similaritytransform.dir/flags.make
CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o: /home/nuc/yi/vins/vins_catkin_ws/src/ethzasl_msf/msf_core/src/similaritytransform.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/msf_core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o -c /home/nuc/yi/vins/vins_catkin_ws/src/ethzasl_msf/msf_core/src/similaritytransform.cc

CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/yi/vins/vins_catkin_ws/src/ethzasl_msf/msf_core/src/similaritytransform.cc > CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.i

CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/yi/vins/vins_catkin_ws/src/ethzasl_msf/msf_core/src/similaritytransform.cc -o CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.s

CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o.requires:

.PHONY : CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o.requires

CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o.provides: CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o.requires
	$(MAKE) -f CMakeFiles/similaritytransform.dir/build.make CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o.provides.build
.PHONY : CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o.provides

CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o.provides.build: CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o


# Object files for target similaritytransform
similaritytransform_OBJECTS = \
"CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o"

# External object files for target similaritytransform
similaritytransform_EXTERNAL_OBJECTS =

/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: CMakeFiles/similaritytransform.dir/build.make
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libmsf_timing.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/libtf.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/libtf2_ros.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/libactionlib.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/libmessage_filters.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/libroscpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/libtf2.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/librosconsole.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /usr/lib/liblog4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/librostime.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /opt/ros/indigo/lib/libcpp_common.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libglog.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so: CMakeFiles/similaritytransform.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/msf_core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/similaritytransform.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/similaritytransform.dir/build: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libsimilaritytransform.so

.PHONY : CMakeFiles/similaritytransform.dir/build

CMakeFiles/similaritytransform.dir/requires: CMakeFiles/similaritytransform.dir/src/similaritytransform.cc.o.requires

.PHONY : CMakeFiles/similaritytransform.dir/requires

CMakeFiles/similaritytransform.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/similaritytransform.dir/cmake_clean.cmake
.PHONY : CMakeFiles/similaritytransform.dir/clean

CMakeFiles/similaritytransform.dir/depend:
	cd /home/nuc/yi/vins/vins_catkin_ws/build/msf_core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/yi/vins/vins_catkin_ws/src/ethzasl_msf/msf_core /home/nuc/yi/vins/vins_catkin_ws/src/ethzasl_msf/msf_core /home/nuc/yi/vins/vins_catkin_ws/build/msf_core /home/nuc/yi/vins/vins_catkin_ws/build/msf_core /home/nuc/yi/vins/vins_catkin_ws/build/msf_core/CMakeFiles/similaritytransform.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/similaritytransform.dir/depend

