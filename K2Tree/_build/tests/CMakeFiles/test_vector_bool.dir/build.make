# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /home/zhaocheng/anaconda2/bin/cmake

# The command to remove a file.
RM = /home/zhaocheng/anaconda2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhaocheng/K2Tree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhaocheng/K2Tree/_build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test_vector_bool.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_vector_bool.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_vector_bool.dir/flags.make

tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o: tests/CMakeFiles/test_vector_bool.dir/flags.make
tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o: ../tests/test_vector_bool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhaocheng/K2Tree/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o"
	cd /home/zhaocheng/K2Tree/_build/tests && /home/zhaocheng/local/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o -c /home/zhaocheng/K2Tree/tests/test_vector_bool.cc

tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.i"
	cd /home/zhaocheng/K2Tree/_build/tests && /home/zhaocheng/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhaocheng/K2Tree/tests/test_vector_bool.cc > CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.i

tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.s"
	cd /home/zhaocheng/K2Tree/_build/tests && /home/zhaocheng/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhaocheng/K2Tree/tests/test_vector_bool.cc -o CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.s

tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o.requires:

.PHONY : tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o.requires

tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o.provides: tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o.requires
	$(MAKE) -f tests/CMakeFiles/test_vector_bool.dir/build.make tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o.provides.build
.PHONY : tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o.provides

tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o.provides.build: tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o


# Object files for target test_vector_bool
test_vector_bool_OBJECTS = \
"CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o"

# External object files for target test_vector_bool
test_vector_bool_EXTERNAL_OBJECTS =

tests/test_vector_bool: tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o
tests/test_vector_bool: tests/CMakeFiles/test_vector_bool.dir/build.make
tests/test_vector_bool: thirdparty/gtest/libgtest.a
tests/test_vector_bool: thirdparty/gtest/libgtest_main.a
tests/test_vector_bool: src/libk2tree.a
tests/test_vector_bool: thirdparty/gtest/libgtest.a
tests/test_vector_bool: tests/CMakeFiles/test_vector_bool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhaocheng/K2Tree/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_vector_bool"
	cd /home/zhaocheng/K2Tree/_build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_vector_bool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test_vector_bool.dir/build: tests/test_vector_bool

.PHONY : tests/CMakeFiles/test_vector_bool.dir/build

tests/CMakeFiles/test_vector_bool.dir/requires: tests/CMakeFiles/test_vector_bool.dir/test_vector_bool.cc.o.requires

.PHONY : tests/CMakeFiles/test_vector_bool.dir/requires

tests/CMakeFiles/test_vector_bool.dir/clean:
	cd /home/zhaocheng/K2Tree/_build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_vector_bool.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_vector_bool.dir/clean

tests/CMakeFiles/test_vector_bool.dir/depend:
	cd /home/zhaocheng/K2Tree/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhaocheng/K2Tree /home/zhaocheng/K2Tree/tests /home/zhaocheng/K2Tree/_build /home/zhaocheng/K2Tree/_build/tests /home/zhaocheng/K2Tree/_build/tests/CMakeFiles/test_vector_bool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_vector_bool.dir/depend

