# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ahab/jackIRC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ahab/jackIRC/build

# Include any dependencies generated for this target.
include CMakeFiles/woody.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/woody.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/woody.dir/flags.make

CMakeFiles/woody.dir/srcs/main.c.o: CMakeFiles/woody.dir/flags.make
CMakeFiles/woody.dir/srcs/main.c.o: ../srcs/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahab/jackIRC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/woody.dir/srcs/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/woody.dir/srcs/main.c.o   -c /home/ahab/jackIRC/srcs/main.c

CMakeFiles/woody.dir/srcs/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/woody.dir/srcs/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ahab/jackIRC/srcs/main.c > CMakeFiles/woody.dir/srcs/main.c.i

CMakeFiles/woody.dir/srcs/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/woody.dir/srcs/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ahab/jackIRC/srcs/main.c -o CMakeFiles/woody.dir/srcs/main.c.s

# Object files for target woody
woody_OBJECTS = \
"CMakeFiles/woody.dir/srcs/main.c.o"

# External object files for target woody
woody_EXTERNAL_OBJECTS =

woody: CMakeFiles/woody.dir/srcs/main.c.o
woody: CMakeFiles/woody.dir/build.make
woody: CMakeFiles/woody.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ahab/jackIRC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable woody"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/woody.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/woody.dir/build: woody

.PHONY : CMakeFiles/woody.dir/build

CMakeFiles/woody.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/woody.dir/cmake_clean.cmake
.PHONY : CMakeFiles/woody.dir/clean

CMakeFiles/woody.dir/depend:
	cd /home/ahab/jackIRC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ahab/jackIRC /home/ahab/jackIRC /home/ahab/jackIRC/build /home/ahab/jackIRC/build /home/ahab/jackIRC/build/CMakeFiles/woody.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/woody.dir/depend

