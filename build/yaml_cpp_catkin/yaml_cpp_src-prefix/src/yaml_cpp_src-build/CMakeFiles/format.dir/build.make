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
CMAKE_SOURCE_DIR = /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build

# Utility rule file for format.

# Include the progress variables for this target.
include CMakeFiles/format.dir/progress.make

CMakeFiles/format:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running clang-format"
	clang-format --style=file -i /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/binary.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/convert.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/directives.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/emit.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/emitfromevents.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/emitter.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/emitterstate.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/emitterutils.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/exceptions.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/exp.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/memory.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/node.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/node_data.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/nodebuilder.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/nodeevents.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/null.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/ostream_wrapper.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/parse.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/parser.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/regex_yaml.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/scanner.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/scanscalar.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/scantag.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/scantoken.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/simplekey.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/singledocparser.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/stream.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/tag.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/anchor.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/binary.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/contrib/anchordict.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/contrib/graphbuilder.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/dll.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/emitfromevents.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/emitter.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/emitterdef.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/emittermanip.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/emitterstyle.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/eventhandler.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/exceptions.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/mark.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/convert.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/detail/bool_type.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/detail/impl.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/detail/iterator.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/detail/iterator_fwd.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/detail/memory.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/detail/node.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/detail/node_data.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/detail/node_iterator.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/detail/node_ref.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/emit.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/impl.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/iterator.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/node.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/parse.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/ptr.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/node/type.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/noncopyable.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/null.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/ostream_wrapper.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/parser.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/stlemitter.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/traits.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/yaml.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/collectionstack.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/directives.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/emitterstate.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/emitterutils.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/exp.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/indentation.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/nodebuilder.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/nodeevents.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/ptr_vector.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/regex_yaml.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/regeximpl.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/scanner.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/scanscalar.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/scantag.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/setting.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/singledocparser.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/stream.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/streamcharsource.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/stringsource.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/tag.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/token.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/contrib/graphbuilder.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/contrib/graphbuilderadapter.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/contrib/anchordict.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/include/yaml-cpp/contrib/graphbuilder.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/src/contrib/graphbuilderadapter.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/main.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/ostream_wrapper_test.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/regex_test.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/integration/emitter_test.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/integration/encoding_test.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/integration/gen_emitter_test.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/integration/handler_spec_test.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/integration/handler_test.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/integration/load_node_test.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/integration/node_spec_test.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/node/node_test.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/handler_test.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/mock_event_handler.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/test/specexamples.h /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/util/parse.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/util/sandbox.cpp /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src/util/read.cpp

format: CMakeFiles/format
format: CMakeFiles/format.dir/build.make

.PHONY : format

# Rule to build all files generated by this target.
CMakeFiles/format.dir/build: format

.PHONY : CMakeFiles/format.dir/build

CMakeFiles/format.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/format.dir/cmake_clean.cmake
.PHONY : CMakeFiles/format.dir/clean

CMakeFiles/format.dir/depend:
	cd /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build /home/nuc/yi/vins/vins_catkin_ws/build/yaml_cpp_catkin/yaml_cpp_src-prefix/src/yaml_cpp_src-build/CMakeFiles/format.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/format.dir/depend
