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
include examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/depend.make

# Include the progress variables for this target.
include examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/progress.make

# Include the compile flags for this target's objects.
include examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/flags.make

examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.o: examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/flags.make
examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.o: examples/iec61850_client_example_log/client_example_log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/libiec61850/libiec61850/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.o"
	cd /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.o   -c /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log/client_example_log.c

examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.i"
	cd /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log/client_example_log.c > CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.i

examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.s"
	cd /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log/client_example_log.c -o CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.s

# Object files for target iec61850_client_example_log
iec61850_client_example_log_OBJECTS = \
"CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.o"

# External object files for target iec61850_client_example_log
iec61850_client_example_log_EXTERNAL_OBJECTS =

examples/iec61850_client_example_log/iec61850_client_example_log: examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/client_example_log.c.o
examples/iec61850_client_example_log/iec61850_client_example_log: examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/build.make
examples/iec61850_client_example_log/iec61850_client_example_log: src/libiec61850.a
examples/iec61850_client_example_log/iec61850_client_example_log: hal/libhal.a
examples/iec61850_client_example_log/iec61850_client_example_log: examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/libiec61850/libiec61850/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable iec61850_client_example_log"
	cd /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iec61850_client_example_log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/build: examples/iec61850_client_example_log/iec61850_client_example_log

.PHONY : examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/build

examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/clean:
	cd /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log && $(CMAKE_COMMAND) -P CMakeFiles/iec61850_client_example_log.dir/cmake_clean.cmake
.PHONY : examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/clean

examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/depend:
	cd /home/ubuntu/libiec61850/libiec61850 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/libiec61850/libiec61850 /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log /home/ubuntu/libiec61850/libiec61850 /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log /home/ubuntu/libiec61850/libiec61850/examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/iec61850_client_example_log/CMakeFiles/iec61850_client_example_log.dir/depend
