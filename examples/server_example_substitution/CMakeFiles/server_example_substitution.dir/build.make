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
include examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/depend.make

# Include the progress variables for this target.
include examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/progress.make

# Include the compile flags for this target's objects.
include examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/flags.make

examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/server_example_substitution.c.o: examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/flags.make
examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/server_example_substitution.c.o: examples/server_example_substitution/server_example_substitution.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/libiec61850/libiec61850/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/server_example_substitution.c.o"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/server_example_substitution.dir/server_example_substitution.c.o   -c /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution/server_example_substitution.c

examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/server_example_substitution.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/server_example_substitution.dir/server_example_substitution.c.i"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution/server_example_substitution.c > CMakeFiles/server_example_substitution.dir/server_example_substitution.c.i

examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/server_example_substitution.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/server_example_substitution.dir/server_example_substitution.c.s"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution/server_example_substitution.c -o CMakeFiles/server_example_substitution.dir/server_example_substitution.c.s

examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/static_model.c.o: examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/flags.make
examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/static_model.c.o: examples/server_example_substitution/static_model.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/libiec61850/libiec61850/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/static_model.c.o"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/server_example_substitution.dir/static_model.c.o   -c /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution/static_model.c

examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/static_model.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/server_example_substitution.dir/static_model.c.i"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution/static_model.c > CMakeFiles/server_example_substitution.dir/static_model.c.i

examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/static_model.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/server_example_substitution.dir/static_model.c.s"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution/static_model.c -o CMakeFiles/server_example_substitution.dir/static_model.c.s

# Object files for target server_example_substitution
server_example_substitution_OBJECTS = \
"CMakeFiles/server_example_substitution.dir/server_example_substitution.c.o" \
"CMakeFiles/server_example_substitution.dir/static_model.c.o"

# External object files for target server_example_substitution
server_example_substitution_EXTERNAL_OBJECTS =

examples/server_example_substitution/server_example_substitution: examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/server_example_substitution.c.o
examples/server_example_substitution/server_example_substitution: examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/static_model.c.o
examples/server_example_substitution/server_example_substitution: examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/build.make
examples/server_example_substitution/server_example_substitution: src/libiec61850.a
examples/server_example_substitution/server_example_substitution: hal/libhal.a
examples/server_example_substitution/server_example_substitution: examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/libiec61850/libiec61850/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable server_example_substitution"
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server_example_substitution.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/build: examples/server_example_substitution/server_example_substitution

.PHONY : examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/build

examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/clean:
	cd /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution && $(CMAKE_COMMAND) -P CMakeFiles/server_example_substitution.dir/cmake_clean.cmake
.PHONY : examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/clean

examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/depend:
	cd /home/ubuntu/libiec61850/libiec61850 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/libiec61850/libiec61850 /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution /home/ubuntu/libiec61850/libiec61850 /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution /home/ubuntu/libiec61850/libiec61850/examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/server_example_substitution/CMakeFiles/server_example_substitution.dir/depend

