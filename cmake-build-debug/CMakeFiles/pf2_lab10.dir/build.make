# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/pf2_lab10.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pf2_lab10.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pf2_lab10.dir/flags.make

CMakeFiles/pf2_lab10.dir/main.cpp.o: CMakeFiles/pf2_lab10.dir/flags.make
CMakeFiles/pf2_lab10.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pf2_lab10.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pf2_lab10.dir/main.cpp.o -c "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10/main.cpp"

CMakeFiles/pf2_lab10.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pf2_lab10.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10/main.cpp" > CMakeFiles/pf2_lab10.dir/main.cpp.i

CMakeFiles/pf2_lab10.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pf2_lab10.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10/main.cpp" -o CMakeFiles/pf2_lab10.dir/main.cpp.s

# Object files for target pf2_lab10
pf2_lab10_OBJECTS = \
"CMakeFiles/pf2_lab10.dir/main.cpp.o"

# External object files for target pf2_lab10
pf2_lab10_EXTERNAL_OBJECTS =

pf2_lab10: CMakeFiles/pf2_lab10.dir/main.cpp.o
pf2_lab10: CMakeFiles/pf2_lab10.dir/build.make
pf2_lab10: CMakeFiles/pf2_lab10.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pf2_lab10"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pf2_lab10.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pf2_lab10.dir/build: pf2_lab10

.PHONY : CMakeFiles/pf2_lab10.dir/build

CMakeFiles/pf2_lab10.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pf2_lab10.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pf2_lab10.dir/clean

CMakeFiles/pf2_lab10.dir/depend:
	cd "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10" "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10" "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10/cmake-build-debug" "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10/cmake-build-debug" "/Users/benworthington/Documents/UArk Spring 2021/Programming Foundations 2 (CSCE 2014)/Labs/pf2-lab10/cmake-build-debug/CMakeFiles/pf2_lab10.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/pf2_lab10.dir/depend

