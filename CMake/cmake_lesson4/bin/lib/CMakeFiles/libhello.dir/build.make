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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin

# Include any dependencies generated for this target.
include lib/CMakeFiles/libhello.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/libhello.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/libhello.dir/flags.make

lib/CMakeFiles/libhello.dir/hello.c.o: lib/CMakeFiles/libhello.dir/flags.make
lib/CMakeFiles/libhello.dir/hello.c.o: ../lib/hello.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/CMakeFiles/libhello.dir/hello.c.o"
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin/lib && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libhello.dir/hello.c.o   -c /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/lib/hello.c

lib/CMakeFiles/libhello.dir/hello.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libhello.dir/hello.c.i"
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin/lib && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/lib/hello.c > CMakeFiles/libhello.dir/hello.c.i

lib/CMakeFiles/libhello.dir/hello.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libhello.dir/hello.c.s"
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin/lib && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/lib/hello.c -o CMakeFiles/libhello.dir/hello.c.s

# Object files for target libhello
libhello_OBJECTS = \
"CMakeFiles/libhello.dir/hello.c.o"

# External object files for target libhello
libhello_EXTERNAL_OBJECTS =

lib/libhello.a: lib/CMakeFiles/libhello.dir/hello.c.o
lib/libhello.a: lib/CMakeFiles/libhello.dir/build.make
lib/libhello.a: lib/CMakeFiles/libhello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libhello.a"
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin/lib && $(CMAKE_COMMAND) -P CMakeFiles/libhello.dir/cmake_clean_target.cmake
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libhello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/libhello.dir/build: lib/libhello.a

.PHONY : lib/CMakeFiles/libhello.dir/build

lib/CMakeFiles/libhello.dir/clean:
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin/lib && $(CMAKE_COMMAND) -P CMakeFiles/libhello.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/libhello.dir/clean

lib/CMakeFiles/libhello.dir/depend:
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4 /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/lib /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin/lib /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson4/bin/lib/CMakeFiles/libhello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/libhello.dir/depend

