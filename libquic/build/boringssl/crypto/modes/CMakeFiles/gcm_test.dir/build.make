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
include boringssl/crypto/modes/CMakeFiles/gcm_test.dir/depend.make

# Include the progress variables for this target.
include boringssl/crypto/modes/CMakeFiles/gcm_test.dir/progress.make

# Include the compile flags for this target's objects.
include boringssl/crypto/modes/CMakeFiles/gcm_test.dir/flags.make

boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o: boringssl/crypto/modes/CMakeFiles/gcm_test.dir/flags.make
boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o: ../boringssl/crypto/modes/gcm_test.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ren/quic/libquic/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o"
	cd /home/ren/quic/libquic/build/boringssl/crypto/modes && /bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/gcm_test.dir/gcm_test.c.o   -c /home/ren/quic/libquic/boringssl/crypto/modes/gcm_test.c

boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gcm_test.dir/gcm_test.c.i"
	cd /home/ren/quic/libquic/build/boringssl/crypto/modes && /bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ren/quic/libquic/boringssl/crypto/modes/gcm_test.c > CMakeFiles/gcm_test.dir/gcm_test.c.i

boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gcm_test.dir/gcm_test.c.s"
	cd /home/ren/quic/libquic/build/boringssl/crypto/modes && /bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ren/quic/libquic/boringssl/crypto/modes/gcm_test.c -o CMakeFiles/gcm_test.dir/gcm_test.c.s

boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o.requires:
.PHONY : boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o.requires

boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o.provides: boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o.requires
	$(MAKE) -f boringssl/crypto/modes/CMakeFiles/gcm_test.dir/build.make boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o.provides.build
.PHONY : boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o.provides

boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o.provides.build: boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o

# Object files for target gcm_test
gcm_test_OBJECTS = \
"CMakeFiles/gcm_test.dir/gcm_test.c.o"

# External object files for target gcm_test
gcm_test_EXTERNAL_OBJECTS = \
"/home/ren/quic/libquic/build/boringssl/crypto/test/CMakeFiles/test_support.dir/file_test.cc.o" \
"/home/ren/quic/libquic/build/boringssl/crypto/test/CMakeFiles/test_support.dir/malloc.cc.o" \
"/home/ren/quic/libquic/build/boringssl/crypto/test/CMakeFiles/test_support.dir/test_util.cc.o"

boringssl/crypto/modes/gcm_test: boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o
boringssl/crypto/modes/gcm_test: boringssl/crypto/test/CMakeFiles/test_support.dir/file_test.cc.o
boringssl/crypto/modes/gcm_test: boringssl/crypto/test/CMakeFiles/test_support.dir/malloc.cc.o
boringssl/crypto/modes/gcm_test: boringssl/crypto/test/CMakeFiles/test_support.dir/test_util.cc.o
boringssl/crypto/modes/gcm_test: boringssl/crypto/modes/CMakeFiles/gcm_test.dir/build.make
boringssl/crypto/modes/gcm_test: boringssl/crypto/libcrypto.a
boringssl/crypto/modes/gcm_test: boringssl/crypto/modes/CMakeFiles/gcm_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable gcm_test"
	cd /home/ren/quic/libquic/build/boringssl/crypto/modes && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gcm_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
boringssl/crypto/modes/CMakeFiles/gcm_test.dir/build: boringssl/crypto/modes/gcm_test
.PHONY : boringssl/crypto/modes/CMakeFiles/gcm_test.dir/build

boringssl/crypto/modes/CMakeFiles/gcm_test.dir/requires: boringssl/crypto/modes/CMakeFiles/gcm_test.dir/gcm_test.c.o.requires
.PHONY : boringssl/crypto/modes/CMakeFiles/gcm_test.dir/requires

boringssl/crypto/modes/CMakeFiles/gcm_test.dir/clean:
	cd /home/ren/quic/libquic/build/boringssl/crypto/modes && $(CMAKE_COMMAND) -P CMakeFiles/gcm_test.dir/cmake_clean.cmake
.PHONY : boringssl/crypto/modes/CMakeFiles/gcm_test.dir/clean

boringssl/crypto/modes/CMakeFiles/gcm_test.dir/depend:
	cd /home/ren/quic/libquic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ren/quic/libquic /home/ren/quic/libquic/boringssl/crypto/modes /home/ren/quic/libquic/build /home/ren/quic/libquic/build/boringssl/crypto/modes /home/ren/quic/libquic/build/boringssl/crypto/modes/CMakeFiles/gcm_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : boringssl/crypto/modes/CMakeFiles/gcm_test.dir/depend

