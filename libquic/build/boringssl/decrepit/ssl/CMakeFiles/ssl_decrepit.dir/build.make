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

# Include any dependencies generated for this target.
include boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/depend.make

# Include the progress variables for this target.
include boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/progress.make

# Include the compile flags for this target's objects.
include boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/flags.make

boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o: boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/flags.make
boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o: ../boringssl/decrepit/ssl/ssl_decrepit.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ren/quic/libquic/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o"
	cd /home/ren/quic/libquic/build/boringssl/decrepit/ssl && /bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o   -c /home/ren/quic/libquic/boringssl/decrepit/ssl/ssl_decrepit.c

boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.i"
	cd /home/ren/quic/libquic/build/boringssl/decrepit/ssl && /bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ren/quic/libquic/boringssl/decrepit/ssl/ssl_decrepit.c > CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.i

boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.s"
	cd /home/ren/quic/libquic/build/boringssl/decrepit/ssl && /bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ren/quic/libquic/boringssl/decrepit/ssl/ssl_decrepit.c -o CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.s

boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o.requires:
.PHONY : boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o.requires

boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o.provides: boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o.requires
	$(MAKE) -f boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/build.make boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o.provides.build
.PHONY : boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o.provides

boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o.provides.build: boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o

ssl_decrepit: boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o
ssl_decrepit: boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/build.make
.PHONY : ssl_decrepit

# Rule to build all files generated by this target.
boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/build: ssl_decrepit
.PHONY : boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/build

boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/requires: boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/ssl_decrepit.c.o.requires
.PHONY : boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/requires

boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/clean:
	cd /home/ren/quic/libquic/build/boringssl/decrepit/ssl && $(CMAKE_COMMAND) -P CMakeFiles/ssl_decrepit.dir/cmake_clean.cmake
.PHONY : boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/clean

boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/depend:
	cd /home/ren/quic/libquic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ren/quic/libquic /home/ren/quic/libquic/boringssl/decrepit/ssl /home/ren/quic/libquic/build /home/ren/quic/libquic/build/boringssl/decrepit/ssl /home/ren/quic/libquic/build/boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : boringssl/decrepit/ssl/CMakeFiles/ssl_decrepit.dir/depend

