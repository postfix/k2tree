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
include tools/CMakeFiles/csv_partition.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/csv_partition.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/csv_partition.dir/flags.make

tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o: tools/CMakeFiles/csv_partition.dir/flags.make
tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o: ../tools/csv_partition.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhaocheng/K2Tree/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o"
	cd /home/zhaocheng/K2Tree/_build/tools && /home/zhaocheng/local/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/csv_partition.dir/csv_partition.cc.o -c /home/zhaocheng/K2Tree/tools/csv_partition.cc

tools/CMakeFiles/csv_partition.dir/csv_partition.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csv_partition.dir/csv_partition.cc.i"
	cd /home/zhaocheng/K2Tree/_build/tools && /home/zhaocheng/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhaocheng/K2Tree/tools/csv_partition.cc > CMakeFiles/csv_partition.dir/csv_partition.cc.i

tools/CMakeFiles/csv_partition.dir/csv_partition.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csv_partition.dir/csv_partition.cc.s"
	cd /home/zhaocheng/K2Tree/_build/tools && /home/zhaocheng/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhaocheng/K2Tree/tools/csv_partition.cc -o CMakeFiles/csv_partition.dir/csv_partition.cc.s

tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o.requires:

.PHONY : tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o.requires

tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o.provides: tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o.requires
	$(MAKE) -f tools/CMakeFiles/csv_partition.dir/build.make tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o.provides.build
.PHONY : tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o.provides

tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o.provides.build: tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o


# Object files for target csv_partition
csv_partition_OBJECTS = \
"CMakeFiles/csv_partition.dir/csv_partition.cc.o"

# External object files for target csv_partition
csv_partition_EXTERNAL_OBJECTS =

tools/csv_partition: tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o
tools/csv_partition: tools/CMakeFiles/csv_partition.dir/build.make
tools/csv_partition: src/libk2tree.a
tools/csv_partition: tools/CMakeFiles/csv_partition.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhaocheng/K2Tree/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable csv_partition"
	cd /home/zhaocheng/K2Tree/_build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/csv_partition.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/csv_partition.dir/build: tools/csv_partition

.PHONY : tools/CMakeFiles/csv_partition.dir/build

tools/CMakeFiles/csv_partition.dir/requires: tools/CMakeFiles/csv_partition.dir/csv_partition.cc.o.requires

.PHONY : tools/CMakeFiles/csv_partition.dir/requires

tools/CMakeFiles/csv_partition.dir/clean:
	cd /home/zhaocheng/K2Tree/_build/tools && $(CMAKE_COMMAND) -P CMakeFiles/csv_partition.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/csv_partition.dir/clean

tools/CMakeFiles/csv_partition.dir/depend:
	cd /home/zhaocheng/K2Tree/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhaocheng/K2Tree /home/zhaocheng/K2Tree/tools /home/zhaocheng/K2Tree/_build /home/zhaocheng/K2Tree/_build/tools /home/zhaocheng/K2Tree/_build/tools/CMakeFiles/csv_partition.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/csv_partition.dir/depend

