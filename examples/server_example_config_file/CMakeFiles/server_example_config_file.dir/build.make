# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/ubuntu/libiec61850/libiec61850

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/libiec61850/libiec61850

# Include any dependencies generated for this target.
include examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/depend.make

# Include the progress variables for this target.
include examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/progress.make

# Include the compile flags for this target's objects.
include examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/flags.make

examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/server_example_config_file.c.o: examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/flags.make
examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/server_example_config_file.c.o: examples/server_example_config_file/server_example_config_file.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/libiec61850/libiec61850/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/server_example_config_file.c.o"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/server_example_config_file.dir/server_example_config_file.c.o   -c /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file/server_example_config_file.c

examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/server_example_config_file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/server_example_config_file.dir/server_example_config_file.c.i"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file/server_example_config_file.c > CMakeFiles/server_example_config_file.dir/server_example_config_file.c.i

examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/server_example_config_file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/server_example_config_file.dir/server_example_config_file.c.s"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file/server_example_config_file.c -o CMakeFiles/server_example_config_file.dir/server_example_config_file.c.s

# Object files for target server_example_config_file
server_example_config_file_OBJECTS = \
"CMakeFiles/server_example_config_file.dir/server_example_config_file.c.o"

# External object files for target server_example_config_file
server_example_config_file_EXTERNAL_OBJECTS =

examples/server_example_config_file/server_example_config_file: examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/server_example_config_file.c.o
examples/server_example_config_file/server_example_config_file: examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/build.make
examples/server_example_config_file/server_example_config_file: src/libiec61850.a
examples/server_example_config_file/server_example_config_file: hal/libhal.a
examples/server_example_config_file/server_example_config_file: examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/libiec61850/libiec61850/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable server_example_config_file"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server_example_config_file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/build: examples/server_example_config_file/server_example_config_file

.PHONY : examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/build

examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/clean:
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file && $(CMAKE_COMMAND) -P CMakeFiles/server_example_config_file.dir/cmake_clean.cmake
.PHONY : examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/clean

examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/depend:
	cd /home/ubuntu/libiec61850/libiec61850 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/libiec61850/libiec61850 /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file /home/ubuntu/libiec61850/libiec61850 /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file /home/ubuntu/libiec61850/libiec61850/examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/server_example_config_file/CMakeFiles/server_example_config_file.dir/depend

