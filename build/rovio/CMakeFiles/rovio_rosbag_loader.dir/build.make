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

# Include any dependencies generated for this target.
include CMakeFiles/rovio_rosbag_loader.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rovio_rosbag_loader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rovio_rosbag_loader.dir/flags.make

CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o: CMakeFiles/rovio_rosbag_loader.dir/flags.make
CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o: /home/nuc/yi/vins/vins_catkin_ws/src/rovio/src/rovio_rosbag_loader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/rovio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o -c /home/nuc/yi/vins/vins_catkin_ws/src/rovio/src/rovio_rosbag_loader.cpp

CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/yi/vins/vins_catkin_ws/src/rovio/src/rovio_rosbag_loader.cpp > CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.i

CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/yi/vins/vins_catkin_ws/src/rovio/src/rovio_rosbag_loader.cpp -o CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.s

CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o.requires:

.PHONY : CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o.requires

CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o.provides: CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o.requires
	$(MAKE) -f CMakeFiles/rovio_rosbag_loader.dir/build.make CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o.provides.build
.PHONY : CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o.provides

CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o.provides.build: CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o


# Object files for target rovio_rosbag_loader
rovio_rosbag_loader_OBJECTS = \
"CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o"

# External object files for target rovio_rosbag_loader
rovio_rosbag_loader_EXTERNAL_OBJECTS =

/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: CMakeFiles/rovio_rosbag_loader.dir/build.make
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/librovio.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libroslib.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/librospack.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libcv_bridge.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libtf.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libtf2_ros.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libactionlib.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libmessage_filters.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libtf2.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/librosbag.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/librosbag_storage.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libroslz4.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libtopic_tools.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libroscpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/librosconsole.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/liblog4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/librostime.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /opt/ros/indigo/lib/libcpp_common.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/libyaml-cpp0.5.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader: CMakeFiles/rovio_rosbag_loader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/rovio/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rovio_rosbag_loader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rovio_rosbag_loader.dir/build: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/rovio/rovio_rosbag_loader

.PHONY : CMakeFiles/rovio_rosbag_loader.dir/build

CMakeFiles/rovio_rosbag_loader.dir/requires: CMakeFiles/rovio_rosbag_loader.dir/src/rovio_rosbag_loader.cpp.o.requires

.PHONY : CMakeFiles/rovio_rosbag_loader.dir/requires

CMakeFiles/rovio_rosbag_loader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rovio_rosbag_loader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rovio_rosbag_loader.dir/clean

CMakeFiles/rovio_rosbag_loader.dir/depend:
	cd /home/nuc/yi/vins/vins_catkin_ws/build/rovio && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/yi/vins/vins_catkin_ws/src/rovio /home/nuc/yi/vins/vins_catkin_ws/src/rovio /home/nuc/yi/vins/vins_catkin_ws/build/rovio /home/nuc/yi/vins/vins_catkin_ws/build/rovio /home/nuc/yi/vins/vins_catkin_ws/build/rovio/CMakeFiles/rovio_rosbag_loader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rovio_rosbag_loader.dir/depend

