# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/metal/htslib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/metal/htslib

# Utility rule file for test_target.

# Include the progress variables for this target.
include CMakeFiles/test_target.dir/progress.make

CMakeFiles/test_target:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/metal/htslib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Test target"
	cd /home/metal/htslib/htslib-1.13 && TEST_COMMAND

test_target: CMakeFiles/test_target
test_target: CMakeFiles/test_target.dir/build.make

.PHONY : test_target

# Rule to build all files generated by this target.
CMakeFiles/test_target.dir/build: test_target

.PHONY : CMakeFiles/test_target.dir/build

CMakeFiles/test_target.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_target.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_target.dir/clean

CMakeFiles/test_target.dir/depend:
	cd /home/metal/htslib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/metal/htslib /home/metal/htslib /home/metal/htslib /home/metal/htslib /home/metal/htslib/CMakeFiles/test_target.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_target.dir/depend

