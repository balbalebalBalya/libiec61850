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

# Utility rule file for iec61850_swig_compilation.

# Include the progress variables for this target.
include pyiec61850/CMakeFiles/iec61850_swig_compilation.dir/progress.make

pyiec61850/CMakeFiles/iec61850_swig_compilation: pyiec61850/CMakeFiles/_iec61850.dir/iec61850PYTHON.stamp


pyiec61850/CMakeFiles/_iec61850.dir/iec61850PYTHON.stamp: pyiec61850/iec61850.i
pyiec61850/CMakeFiles/_iec61850.dir/iec61850PYTHON.stamp: pyiec61850/iec61850.i
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/libiec61850/libiec61850/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Swig compile iec61850.i for python"
	cd /home/ubuntu/libiec61850/libiec61850/pyiec61850 && /usr/bin/cmake -E make_directory /home/ubuntu/libiec61850/libiec61850/pyiec61850 /home/ubuntu/libiec61850/libiec61850/pyiec61850/CMakeFiles/_iec61850.dir
	cd /home/ubuntu/libiec61850/libiec61850/pyiec61850 && /usr/bin/cmake -E touch /home/ubuntu/libiec61850/libiec61850/pyiec61850/CMakeFiles/_iec61850.dir/iec61850PYTHON.stamp
	cd /home/ubuntu/libiec61850/libiec61850/pyiec61850 && /usr/bin/cmake -E env SWIG_LIB=/usr/share/swig3.0 /usr/bin/swig3.0 -python -outdir /home/ubuntu/libiec61850/libiec61850/pyiec61850 -c++ -interface _iec61850 -I/home/ubuntu/libiec61850/libiec61850/config -I/home/ubuntu/libiec61850/libiec61850/src/common/inc -I/home/ubuntu/libiec61850/libiec61850/src/goose -I/home/ubuntu/libiec61850/libiec61850/src/sampled_values -I/home/ubuntu/libiec61850/libiec61850/src/hal/inc -I/home/ubuntu/libiec61850/libiec61850/src/iec61850/inc -I/home/ubuntu/libiec61850/libiec61850/src/iec61850/inc_private -I/home/ubuntu/libiec61850/libiec61850/src/mms/inc -I/home/ubuntu/libiec61850/libiec61850/src/mms/inc_private -I/home/ubuntu/libiec61850/libiec61850/src/mms/iso_mms/asn1c -I/home/ubuntu/libiec61850/libiec61850/src/logging -I/home/ubuntu/libiec61850/libiec61850/hal/inc -I/usr/include/python3.8 -I/home/ubuntu/libiec61850/libiec61850/pyiec61850 -o /home/ubuntu/libiec61850/libiec61850/pyiec61850/CMakeFiles/_iec61850.dir/iec61850PYTHON_wrap.cxx /home/ubuntu/libiec61850/libiec61850/pyiec61850/iec61850.i

iec61850_swig_compilation: pyiec61850/CMakeFiles/iec61850_swig_compilation
iec61850_swig_compilation: pyiec61850/CMakeFiles/_iec61850.dir/iec61850PYTHON.stamp
iec61850_swig_compilation: pyiec61850/CMakeFiles/iec61850_swig_compilation.dir/build.make

.PHONY : iec61850_swig_compilation

# Rule to build all files generated by this target.
pyiec61850/CMakeFiles/iec61850_swig_compilation.dir/build: iec61850_swig_compilation

.PHONY : pyiec61850/CMakeFiles/iec61850_swig_compilation.dir/build

pyiec61850/CMakeFiles/iec61850_swig_compilation.dir/clean:
	cd /home/ubuntu/libiec61850/libiec61850/pyiec61850 && $(CMAKE_COMMAND) -P CMakeFiles/iec61850_swig_compilation.dir/cmake_clean.cmake
.PHONY : pyiec61850/CMakeFiles/iec61850_swig_compilation.dir/clean

pyiec61850/CMakeFiles/iec61850_swig_compilation.dir/depend:
	cd /home/ubuntu/libiec61850/libiec61850 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/libiec61850/libiec61850 /home/ubuntu/libiec61850/libiec61850/pyiec61850 /home/ubuntu/libiec61850/libiec61850 /home/ubuntu/libiec61850/libiec61850/pyiec61850 /home/ubuntu/libiec61850/libiec61850/pyiec61850/CMakeFiles/iec61850_swig_compilation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pyiec61850/CMakeFiles/iec61850_swig_compilation.dir/depend

