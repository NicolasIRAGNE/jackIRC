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
include CMakeFiles/jackIRC.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/jackIRC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/jackIRC.dir/flags.make

CMakeFiles/jackIRC.dir/srcs/main.c.o: CMakeFiles/jackIRC.dir/flags.make
CMakeFiles/jackIRC.dir/srcs/main.c.o: ../srcs/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahab/jackIRC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/jackIRC.dir/srcs/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/jackIRC.dir/srcs/main.c.o   -c /home/ahab/jackIRC/srcs/main.c

CMakeFiles/jackIRC.dir/srcs/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jackIRC.dir/srcs/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ahab/jackIRC/srcs/main.c > CMakeFiles/jackIRC.dir/srcs/main.c.i

CMakeFiles/jackIRC.dir/srcs/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jackIRC.dir/srcs/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ahab/jackIRC/srcs/main.c -o CMakeFiles/jackIRC.dir/srcs/main.c.s

CMakeFiles/jackIRC.dir/srcs/tools.c.o: CMakeFiles/jackIRC.dir/flags.make
CMakeFiles/jackIRC.dir/srcs/tools.c.o: ../srcs/tools.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahab/jackIRC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/jackIRC.dir/srcs/tools.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/jackIRC.dir/srcs/tools.c.o   -c /home/ahab/jackIRC/srcs/tools.c

CMakeFiles/jackIRC.dir/srcs/tools.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jackIRC.dir/srcs/tools.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ahab/jackIRC/srcs/tools.c > CMakeFiles/jackIRC.dir/srcs/tools.c.i

CMakeFiles/jackIRC.dir/srcs/tools.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jackIRC.dir/srcs/tools.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ahab/jackIRC/srcs/tools.c -o CMakeFiles/jackIRC.dir/srcs/tools.c.s

CMakeFiles/jackIRC.dir/srcs/handle_message.c.o: CMakeFiles/jackIRC.dir/flags.make
CMakeFiles/jackIRC.dir/srcs/handle_message.c.o: ../srcs/handle_message.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahab/jackIRC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/jackIRC.dir/srcs/handle_message.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/jackIRC.dir/srcs/handle_message.c.o   -c /home/ahab/jackIRC/srcs/handle_message.c

CMakeFiles/jackIRC.dir/srcs/handle_message.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jackIRC.dir/srcs/handle_message.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ahab/jackIRC/srcs/handle_message.c > CMakeFiles/jackIRC.dir/srcs/handle_message.c.i

CMakeFiles/jackIRC.dir/srcs/handle_message.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jackIRC.dir/srcs/handle_message.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ahab/jackIRC/srcs/handle_message.c -o CMakeFiles/jackIRC.dir/srcs/handle_message.c.s

# Object files for target jackIRC
jackIRC_OBJECTS = \
"CMakeFiles/jackIRC.dir/srcs/main.c.o" \
"CMakeFiles/jackIRC.dir/srcs/tools.c.o" \
"CMakeFiles/jackIRC.dir/srcs/handle_message.c.o"

# External object files for target jackIRC
jackIRC_EXTERNAL_OBJECTS =

jackIRC: CMakeFiles/jackIRC.dir/srcs/main.c.o
jackIRC: CMakeFiles/jackIRC.dir/srcs/tools.c.o
jackIRC: CMakeFiles/jackIRC.dir/srcs/handle_message.c.o
jackIRC: CMakeFiles/jackIRC.dir/build.make
jackIRC: /usr/lib/x86_64-linux-gnu/libcurses.so
jackIRC: /usr/lib/x86_64-linux-gnu/libform.so
jackIRC: CMakeFiles/jackIRC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ahab/jackIRC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable jackIRC"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jackIRC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/jackIRC.dir/build: jackIRC

.PHONY : CMakeFiles/jackIRC.dir/build

CMakeFiles/jackIRC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/jackIRC.dir/cmake_clean.cmake
.PHONY : CMakeFiles/jackIRC.dir/clean

CMakeFiles/jackIRC.dir/depend:
	cd /home/ahab/jackIRC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ahab/jackIRC /home/ahab/jackIRC /home/ahab/jackIRC/build /home/ahab/jackIRC/build /home/ahab/jackIRC/build/CMakeFiles/jackIRC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/jackIRC.dir/depend

