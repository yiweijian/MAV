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
CMAKE_SOURCE_DIR = /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/yi/vins/vins_catkin_ws/build/global_fusion

# Include any dependencies generated for this target.
include CMakeFiles/global_fusion_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/global_fusion_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/global_fusion_node.dir/flags.make

CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o: CMakeFiles/global_fusion_node.dir/flags.make
CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o: /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion/src/globalOptNode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/global_fusion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o -c /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion/src/globalOptNode.cpp

CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion/src/globalOptNode.cpp > CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.i

CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion/src/globalOptNode.cpp -o CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.s

CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o.requires:

.PHONY : CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o.requires

CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o.provides: CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o.requires
	$(MAKE) -f CMakeFiles/global_fusion_node.dir/build.make CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o.provides.build
.PHONY : CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o.provides

CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o.provides.build: CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o


CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o: CMakeFiles/global_fusion_node.dir/flags.make
CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o: /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion/src/globalOpt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/global_fusion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o -c /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion/src/globalOpt.cpp

CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion/src/globalOpt.cpp > CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.i

CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion/src/globalOpt.cpp -o CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.s

CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o.requires:

.PHONY : CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o.requires

CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o.provides: CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o.requires
	$(MAKE) -f CMakeFiles/global_fusion_node.dir/build.make CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o.provides.build
.PHONY : CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o.provides

CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o.provides.build: CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o


# Object files for target global_fusion_node
global_fusion_node_OBJECTS = \
"CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o" \
"CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o"

# External object files for target global_fusion_node
global_fusion_node_EXTERNAL_OBJECTS =

/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: CMakeFiles/global_fusion_node.dir/build.make
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /opt/ros/indigo/lib/libroscpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /opt/ros/indigo/lib/librosconsole.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/liblog4cxx.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /opt/ros/indigo/lib/librostime.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /opt/ros/indigo/lib/libcpp_common.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/local/lib/libceres.a
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: ThirdParty/GeographicLib/liblibGeographiccc.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /home/nuc/yi/mynteye_with_realsense/devel/lib/libglog.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libspqr.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/libtbb.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/libtbbmalloc.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libcholmod.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libccolamd.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libcamd.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libcolamd.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libamd.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/liblapack.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/libblas.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.a
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/librt.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/liblapack.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/libblas.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.a
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: /usr/lib/x86_64-linux-gnu/librt.so
/home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node: CMakeFiles/global_fusion_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/global_fusion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/global_fusion_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/global_fusion_node.dir/build: /home/nuc/yi/vins/vins_catkin_ws/devel/lib/global_fusion/global_fusion_node

.PHONY : CMakeFiles/global_fusion_node.dir/build

CMakeFiles/global_fusion_node.dir/requires: CMakeFiles/global_fusion_node.dir/src/globalOptNode.cpp.o.requires
CMakeFiles/global_fusion_node.dir/requires: CMakeFiles/global_fusion_node.dir/src/globalOpt.cpp.o.requires

.PHONY : CMakeFiles/global_fusion_node.dir/requires

CMakeFiles/global_fusion_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/global_fusion_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/global_fusion_node.dir/clean

CMakeFiles/global_fusion_node.dir/depend:
	cd /home/nuc/yi/vins/vins_catkin_ws/build/global_fusion && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion /home/nuc/yi/vins/vins_catkin_ws/src/VINS-Fusion/global_fusion /home/nuc/yi/vins/vins_catkin_ws/build/global_fusion /home/nuc/yi/vins/vins_catkin_ws/build/global_fusion /home/nuc/yi/vins/vins_catkin_ws/build/global_fusion/CMakeFiles/global_fusion_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/global_fusion_node.dir/depend

