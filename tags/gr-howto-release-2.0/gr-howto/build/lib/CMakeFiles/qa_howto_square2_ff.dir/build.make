# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zz4fap/Dropbox/gnuradio/gr-howto

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zz4fap/Dropbox/gnuradio/gr-howto/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/qa_howto_square2_ff.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/qa_howto_square2_ff.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/qa_howto_square2_ff.dir/flags.make

lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o: lib/CMakeFiles/qa_howto_square2_ff.dir/flags.make
lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o: ../lib/qa_howto_square2_ff.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zz4fap/Dropbox/gnuradio/gr-howto/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o"
	cd /home/zz4fap/Dropbox/gnuradio/gr-howto/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o -c /home/zz4fap/Dropbox/gnuradio/gr-howto/lib/qa_howto_square2_ff.cc

lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.i"
	cd /home/zz4fap/Dropbox/gnuradio/gr-howto/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/zz4fap/Dropbox/gnuradio/gr-howto/lib/qa_howto_square2_ff.cc > CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.i

lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.s"
	cd /home/zz4fap/Dropbox/gnuradio/gr-howto/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/zz4fap/Dropbox/gnuradio/gr-howto/lib/qa_howto_square2_ff.cc -o CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.s

lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o.requires:
.PHONY : lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o.requires

lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o.provides: lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/qa_howto_square2_ff.dir/build.make lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o.provides.build
.PHONY : lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o.provides

lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o.provides.build: lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o

# Object files for target qa_howto_square2_ff
qa_howto_square2_ff_OBJECTS = \
"CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o"

# External object files for target qa_howto_square2_ff
qa_howto_square2_ff_EXTERNAL_OBJECTS =

lib/qa_howto_square2_ff: lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o
lib/qa_howto_square2_ff: lib/libgnuradio-howto.so
lib/qa_howto_square2_ff: /usr/lib/libboost_unit_test_framework-mt.so
lib/qa_howto_square2_ff: /usr/local/lib/libgruel.so
lib/qa_howto_square2_ff: /usr/local/lib/libgnuradio-core.so
lib/qa_howto_square2_ff: lib/CMakeFiles/qa_howto_square2_ff.dir/build.make
lib/qa_howto_square2_ff: lib/CMakeFiles/qa_howto_square2_ff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable qa_howto_square2_ff"
	cd /home/zz4fap/Dropbox/gnuradio/gr-howto/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/qa_howto_square2_ff.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/qa_howto_square2_ff.dir/build: lib/qa_howto_square2_ff
.PHONY : lib/CMakeFiles/qa_howto_square2_ff.dir/build

lib/CMakeFiles/qa_howto_square2_ff.dir/requires: lib/CMakeFiles/qa_howto_square2_ff.dir/qa_howto_square2_ff.cc.o.requires
.PHONY : lib/CMakeFiles/qa_howto_square2_ff.dir/requires

lib/CMakeFiles/qa_howto_square2_ff.dir/clean:
	cd /home/zz4fap/Dropbox/gnuradio/gr-howto/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/qa_howto_square2_ff.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/qa_howto_square2_ff.dir/clean

lib/CMakeFiles/qa_howto_square2_ff.dir/depend:
	cd /home/zz4fap/Dropbox/gnuradio/gr-howto/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zz4fap/Dropbox/gnuradio/gr-howto /home/zz4fap/Dropbox/gnuradio/gr-howto/lib /home/zz4fap/Dropbox/gnuradio/gr-howto/build /home/zz4fap/Dropbox/gnuradio/gr-howto/build/lib /home/zz4fap/Dropbox/gnuradio/gr-howto/build/lib/CMakeFiles/qa_howto_square2_ff.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/qa_howto_square2_ff.dir/depend

