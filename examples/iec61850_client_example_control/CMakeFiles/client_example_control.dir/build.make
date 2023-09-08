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
include examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/depend.make

# Include the progress variables for this target.
include examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/progress.make

# Include the compile flags for this target's objects.
include examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/flags.make

examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/client_example_control.c.o: examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/flags.make
examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/client_example_control.c.o: examples/iec61850_client_example_control/client_example_control.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/libiec61850/libiec61850/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/client_example_control.c.o"
	cd /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/client_example_control.dir/client_example_control.c.o   -c /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control/client_example_control.c

examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/client_example_control.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/client_example_control.dir/client_example_control.c.i"
	cd /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control/client_example_control.c > CMakeFiles/client_example_control.dir/client_example_control.c.i

examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/client_example_control.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/client_example_control.dir/client_example_control.c.s"
	cd /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control/client_example_control.c -o CMakeFiles/client_example_control.dir/client_example_control.c.s

# Object files for target client_example_control
client_example_control_OBJECTS = \
"CMakeFiles/client_example_control.dir/client_example_control.c.o"

# External object files for target client_example_control
client_example_control_EXTERNAL_OBJECTS =

examples/iec61850_client_example_control/client_example_control: examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/client_example_control.c.o
examples/iec61850_client_example_control/client_example_control: examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/build.make
examples/iec61850_client_example_control/client_example_control: src/libiec61850.a
examples/iec61850_client_example_control/client_example_control: hal/libhal.a
examples/iec61850_client_example_control/client_example_control: examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/libiec61850/libiec61850/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable client_example_control"
	cd /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client_example_control.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/build: examples/iec61850_client_example_control/client_example_control

.PHONY : examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/build

examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/clean:
	cd /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control && $(CMAKE_COMMAND) -P CMakeFiles/client_example_control.dir/cmake_clean.cmake
.PHONY : examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/clean

examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/depend:
	cd /home/ubuntu/libiec61850/libiec61850 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/libiec61850/libiec61850 /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control /home/ubuntu/libiec61850/libiec61850 /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/iec61850_client_example_control/CMakeFiles/client_example_control.dir/depend
