# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/hello.out.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/hello.out.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/hello.out.dir/flags.make

src/CMakeFiles/hello.out.dir/main.c.o: src/CMakeFiles/hello.out.dir/flags.make
src/CMakeFiles/hello.out.dir/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/hello.out.dir/main.c.o"
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug/src && /usr/local/Cellar/gcc/9.1.0/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hello.out.dir/main.c.o   -c /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/src/main.c

src/CMakeFiles/hello.out.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello.out.dir/main.c.i"
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug/src && /usr/local/Cellar/gcc/9.1.0/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/src/main.c > CMakeFiles/hello.out.dir/main.c.i

src/CMakeFiles/hello.out.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello.out.dir/main.c.s"
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug/src && /usr/local/Cellar/gcc/9.1.0/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/src/main.c -o CMakeFiles/hello.out.dir/main.c.s

# Object files for target hello.out
hello_out_OBJECTS = \
"CMakeFiles/hello.out.dir/main.c.o"

# External object files for target hello.out
hello_out_EXTERNAL_OBJECTS =

bin/hello.out: src/CMakeFiles/hello.out.dir/main.c.o
bin/hello.out: src/CMakeFiles/hello.out.dir/build.make
bin/hello.out: lib/libhello.dylib
bin/hello.out: src/CMakeFiles/hello.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/hello.out"
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/hello.out.dir/build: bin/hello.out

.PHONY : src/CMakeFiles/hello.out.dir/build

src/CMakeFiles/hello.out.dir/clean:
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/hello.out.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/hello.out.dir/clean

src/CMakeFiles/hello.out.dir/depend:
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6 /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/src /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug/src /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson6/cmake-build-debug/src/CMakeFiles/hello.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/hello.out.dir/depend

