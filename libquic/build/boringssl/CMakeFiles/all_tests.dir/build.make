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

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ren/quic/libquic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ren/quic/libquic/build

# Utility rule file for all_tests.

# Include the progress variables for this target.
include boringssl/CMakeFiles/all_tests.dir/progress.make

boringssl/CMakeFiles/all_tests:

all_tests: boringssl/CMakeFiles/all_tests
all_tests: boringssl/CMakeFiles/all_tests.dir/build.make
.PHONY : all_tests

# Rule to build all files generated by this target.
boringssl/CMakeFiles/all_tests.dir/build: all_tests
.PHONY : boringssl/CMakeFiles/all_tests.dir/build

boringssl/CMakeFiles/all_tests.dir/clean:
	cd /home/ren/quic/libquic/build/boringssl && $(CMAKE_COMMAND) -P CMakeFiles/all_tests.dir/cmake_clean.cmake
.PHONY : boringssl/CMakeFiles/all_tests.dir/clean

boringssl/CMakeFiles/all_tests.dir/depend:
	cd /home/ren/quic/libquic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ren/quic/libquic /home/ren/quic/libquic/boringssl /home/ren/quic/libquic/build /home/ren/quic/libquic/build/boringssl /home/ren/quic/libquic/build/boringssl/CMakeFiles/all_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : boringssl/CMakeFiles/all_tests.dir/depend

