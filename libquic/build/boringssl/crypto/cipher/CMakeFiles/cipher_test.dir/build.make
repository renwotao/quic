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
include boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/depend.make

# Include the progress variables for this target.
include boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/progress.make

# Include the compile flags for this target's objects.
include boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/flags.make

boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o: boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/flags.make
boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o: ../boringssl/crypto/cipher/cipher_test.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ren/quic/libquic/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o"
	cd /home/ren/quic/libquic/build/boringssl/crypto/cipher && /bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cipher_test.dir/cipher_test.cc.o -c /home/ren/quic/libquic/boringssl/crypto/cipher/cipher_test.cc

boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cipher_test.dir/cipher_test.cc.i"
	cd /home/ren/quic/libquic/build/boringssl/crypto/cipher && /bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ren/quic/libquic/boringssl/crypto/cipher/cipher_test.cc > CMakeFiles/cipher_test.dir/cipher_test.cc.i

boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cipher_test.dir/cipher_test.cc.s"
	cd /home/ren/quic/libquic/build/boringssl/crypto/cipher && /bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ren/quic/libquic/boringssl/crypto/cipher/cipher_test.cc -o CMakeFiles/cipher_test.dir/cipher_test.cc.s

boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o.requires:
.PHONY : boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o.requires

boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o.provides: boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o.requires
	$(MAKE) -f boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/build.make boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o.provides.build
.PHONY : boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o.provides

boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o.provides.build: boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o

# Object files for target cipher_test
cipher_test_OBJECTS = \
"CMakeFiles/cipher_test.dir/cipher_test.cc.o"

# External object files for target cipher_test
cipher_test_EXTERNAL_OBJECTS = \
"/home/ren/quic/libquic/build/boringssl/crypto/test/CMakeFiles/test_support.dir/file_test.cc.o" \
"/home/ren/quic/libquic/build/boringssl/crypto/test/CMakeFiles/test_support.dir/malloc.cc.o" \
"/home/ren/quic/libquic/build/boringssl/crypto/test/CMakeFiles/test_support.dir/test_util.cc.o"

boringssl/crypto/cipher/cipher_test: boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o
boringssl/crypto/cipher/cipher_test: boringssl/crypto/test/CMakeFiles/test_support.dir/file_test.cc.o
boringssl/crypto/cipher/cipher_test: boringssl/crypto/test/CMakeFiles/test_support.dir/malloc.cc.o
boringssl/crypto/cipher/cipher_test: boringssl/crypto/test/CMakeFiles/test_support.dir/test_util.cc.o
boringssl/crypto/cipher/cipher_test: boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/build.make
boringssl/crypto/cipher/cipher_test: boringssl/crypto/libcrypto.a
boringssl/crypto/cipher/cipher_test: boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable cipher_test"
	cd /home/ren/quic/libquic/build/boringssl/crypto/cipher && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cipher_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/build: boringssl/crypto/cipher/cipher_test
.PHONY : boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/build

boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/requires: boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/cipher_test.cc.o.requires
.PHONY : boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/requires

boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/clean:
	cd /home/ren/quic/libquic/build/boringssl/crypto/cipher && $(CMAKE_COMMAND) -P CMakeFiles/cipher_test.dir/cmake_clean.cmake
.PHONY : boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/clean

boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/depend:
	cd /home/ren/quic/libquic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ren/quic/libquic /home/ren/quic/libquic/boringssl/crypto/cipher /home/ren/quic/libquic/build /home/ren/quic/libquic/build/boringssl/crypto/cipher /home/ren/quic/libquic/build/boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : boringssl/crypto/cipher/CMakeFiles/cipher_test.dir/depend

