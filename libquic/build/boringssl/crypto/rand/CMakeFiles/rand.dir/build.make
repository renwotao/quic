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
include boringssl/crypto/rand/CMakeFiles/rand.dir/depend.make

# Include the progress variables for this target.
include boringssl/crypto/rand/CMakeFiles/rand.dir/progress.make

# Include the compile flags for this target's objects.
include boringssl/crypto/rand/CMakeFiles/rand.dir/flags.make

boringssl/crypto/rand/rdrand-x86_64.S: ../boringssl/crypto/rand/asm/rdrand-x86_64.pl
boringssl/crypto/rand/rdrand-x86_64.S: ../boringssl/crypto/perlasm/arm-xlate.pl
boringssl/crypto/rand/rdrand-x86_64.S: ../boringssl/crypto/perlasm/x86_64-xlate.pl
boringssl/crypto/rand/rdrand-x86_64.S: ../boringssl/crypto/perlasm/x86asm.pl
boringssl/crypto/rand/rdrand-x86_64.S: ../boringssl/crypto/perlasm/x86gas.pl
boringssl/crypto/rand/rdrand-x86_64.S: ../boringssl/crypto/perlasm/x86masm.pl
boringssl/crypto/rand/rdrand-x86_64.S: ../boringssl/crypto/perlasm/x86nasm.pl
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ren/quic/libquic/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating rdrand-x86_64.S"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/perl /home/ren/quic/libquic/boringssl/crypto/rand/asm/rdrand-x86_64.pl elf > rdrand-x86_64.S

boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o: boringssl/crypto/rand/CMakeFiles/rand.dir/flags.make
boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o: ../boringssl/crypto/rand/deterministic.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ren/quic/libquic/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/rand.dir/deterministic.c.o   -c /home/ren/quic/libquic/boringssl/crypto/rand/deterministic.c

boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rand.dir/deterministic.c.i"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ren/quic/libquic/boringssl/crypto/rand/deterministic.c > CMakeFiles/rand.dir/deterministic.c.i

boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rand.dir/deterministic.c.s"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ren/quic/libquic/boringssl/crypto/rand/deterministic.c -o CMakeFiles/rand.dir/deterministic.c.s

boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o.requires:
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o.requires

boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o.provides: boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o.requires
	$(MAKE) -f boringssl/crypto/rand/CMakeFiles/rand.dir/build.make boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o.provides.build
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o.provides

boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o.provides.build: boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o

boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o: boringssl/crypto/rand/CMakeFiles/rand.dir/flags.make
boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o: ../boringssl/crypto/rand/rand.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ren/quic/libquic/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/rand.dir/rand.c.o   -c /home/ren/quic/libquic/boringssl/crypto/rand/rand.c

boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rand.dir/rand.c.i"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ren/quic/libquic/boringssl/crypto/rand/rand.c > CMakeFiles/rand.dir/rand.c.i

boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rand.dir/rand.c.s"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ren/quic/libquic/boringssl/crypto/rand/rand.c -o CMakeFiles/rand.dir/rand.c.s

boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o.requires:
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o.requires

boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o.provides: boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o.requires
	$(MAKE) -f boringssl/crypto/rand/CMakeFiles/rand.dir/build.make boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o.provides.build
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o.provides

boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o.provides.build: boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o

boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o: boringssl/crypto/rand/CMakeFiles/rand.dir/flags.make
boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o: ../boringssl/crypto/rand/urandom.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ren/quic/libquic/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/rand.dir/urandom.c.o   -c /home/ren/quic/libquic/boringssl/crypto/rand/urandom.c

boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rand.dir/urandom.c.i"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ren/quic/libquic/boringssl/crypto/rand/urandom.c > CMakeFiles/rand.dir/urandom.c.i

boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rand.dir/urandom.c.s"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ren/quic/libquic/boringssl/crypto/rand/urandom.c -o CMakeFiles/rand.dir/urandom.c.s

boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o.requires:
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o.requires

boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o.provides: boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o.requires
	$(MAKE) -f boringssl/crypto/rand/CMakeFiles/rand.dir/build.make boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o.provides.build
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o.provides

boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o.provides.build: boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o

boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o: boringssl/crypto/rand/CMakeFiles/rand.dir/flags.make
boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o: ../boringssl/crypto/rand/windows.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ren/quic/libquic/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/rand.dir/windows.c.o   -c /home/ren/quic/libquic/boringssl/crypto/rand/windows.c

boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rand.dir/windows.c.i"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ren/quic/libquic/boringssl/crypto/rand/windows.c > CMakeFiles/rand.dir/windows.c.i

boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rand.dir/windows.c.s"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ren/quic/libquic/boringssl/crypto/rand/windows.c -o CMakeFiles/rand.dir/windows.c.s

boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o.requires:
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o.requires

boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o.provides: boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o.requires
	$(MAKE) -f boringssl/crypto/rand/CMakeFiles/rand.dir/build.make boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o.provides.build
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o.provides

boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o.provides.build: boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o

boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o: boringssl/crypto/rand/CMakeFiles/rand.dir/flags.make
boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o: boringssl/crypto/rand/rdrand-x86_64.S
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ren/quic/libquic/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building ASM object boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o"
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && /bin/cc  $(ASM_DEFINES) $(ASM_FLAGS) -o CMakeFiles/rand.dir/rdrand-x86_64.S.o -c /home/ren/quic/libquic/build/boringssl/crypto/rand/rdrand-x86_64.S

boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o.requires:
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o.requires

boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o.provides: boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o.requires
	$(MAKE) -f boringssl/crypto/rand/CMakeFiles/rand.dir/build.make boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o.provides.build
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o.provides

boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o.provides.build: boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o

rand: boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o
rand: boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o
rand: boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o
rand: boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o
rand: boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o
rand: boringssl/crypto/rand/CMakeFiles/rand.dir/build.make
.PHONY : rand

# Rule to build all files generated by this target.
boringssl/crypto/rand/CMakeFiles/rand.dir/build: rand
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/build

boringssl/crypto/rand/CMakeFiles/rand.dir/requires: boringssl/crypto/rand/CMakeFiles/rand.dir/deterministic.c.o.requires
boringssl/crypto/rand/CMakeFiles/rand.dir/requires: boringssl/crypto/rand/CMakeFiles/rand.dir/rand.c.o.requires
boringssl/crypto/rand/CMakeFiles/rand.dir/requires: boringssl/crypto/rand/CMakeFiles/rand.dir/urandom.c.o.requires
boringssl/crypto/rand/CMakeFiles/rand.dir/requires: boringssl/crypto/rand/CMakeFiles/rand.dir/windows.c.o.requires
boringssl/crypto/rand/CMakeFiles/rand.dir/requires: boringssl/crypto/rand/CMakeFiles/rand.dir/rdrand-x86_64.S.o.requires
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/requires

boringssl/crypto/rand/CMakeFiles/rand.dir/clean:
	cd /home/ren/quic/libquic/build/boringssl/crypto/rand && $(CMAKE_COMMAND) -P CMakeFiles/rand.dir/cmake_clean.cmake
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/clean

boringssl/crypto/rand/CMakeFiles/rand.dir/depend: boringssl/crypto/rand/rdrand-x86_64.S
	cd /home/ren/quic/libquic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ren/quic/libquic /home/ren/quic/libquic/boringssl/crypto/rand /home/ren/quic/libquic/build /home/ren/quic/libquic/build/boringssl/crypto/rand /home/ren/quic/libquic/build/boringssl/crypto/rand/CMakeFiles/rand.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : boringssl/crypto/rand/CMakeFiles/rand.dir/depend

