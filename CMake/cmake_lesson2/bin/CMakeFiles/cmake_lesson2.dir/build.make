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
CMAKE_SOURCE_DIR = /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/bin

# Include any dependencies generated for this target.
include CMakeFiles/cmake_lesson2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cmake_lesson2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cmake_lesson2.dir/flags.make

CMakeFiles/cmake_lesson2.dir/main.c.o: CMakeFiles/cmake_lesson2.dir/flags.make
CMakeFiles/cmake_lesson2.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cmake_lesson2.dir/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cmake_lesson2.dir/main.c.o   -c /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/main.c

CMakeFiles/cmake_lesson2.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cmake_lesson2.dir/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/main.c > CMakeFiles/cmake_lesson2.dir/main.c.i

CMakeFiles/cmake_lesson2.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cmake_lesson2.dir/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/main.c -o CMakeFiles/cmake_lesson2.dir/main.c.s

CMakeFiles/cmake_lesson2.dir/hello.c.o: CMakeFiles/cmake_lesson2.dir/flags.make
CMakeFiles/cmake_lesson2.dir/hello.c.o: ../hello.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/cmake_lesson2.dir/hello.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cmake_lesson2.dir/hello.c.o   -c /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/hello.c

CMakeFiles/cmake_lesson2.dir/hello.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cmake_lesson2.dir/hello.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/hello.c > CMakeFiles/cmake_lesson2.dir/hello.c.i

CMakeFiles/cmake_lesson2.dir/hello.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cmake_lesson2.dir/hello.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/hello.c -o CMakeFiles/cmake_lesson2.dir/hello.c.s

# Object files for target cmake_lesson2
cmake_lesson2_OBJECTS = \
"CMakeFiles/cmake_lesson2.dir/main.c.o" \
"CMakeFiles/cmake_lesson2.dir/hello.c.o"

# External object files for target cmake_lesson2
cmake_lesson2_EXTERNAL_OBJECTS =

cmake_lesson2: CMakeFiles/cmake_lesson2.dir/main.c.o
cmake_lesson2: CMakeFiles/cmake_lesson2.dir/hello.c.o
cmake_lesson2: CMakeFiles/cmake_lesson2.dir/build.make
cmake_lesson2: CMakeFiles/cmake_lesson2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable cmake_lesson2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmake_lesson2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cmake_lesson2.dir/build: cmake_lesson2

.PHONY : CMakeFiles/cmake_lesson2.dir/build

CMakeFiles/cmake_lesson2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cmake_lesson2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cmake_lesson2.dir/clean

CMakeFiles/cmake_lesson2.dir/depend:
	cd /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2 /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2 /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/bin /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/bin /Users/liuxing1/CodeFiles/C/C_Learning/cmake_lesson2/bin/CMakeFiles/cmake_lesson2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cmake_lesson2.dir/depend

