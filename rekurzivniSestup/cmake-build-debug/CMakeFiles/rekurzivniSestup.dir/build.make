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
CMAKE_COMMAND = /opt/jetbrainsToolbox/apps/CLion/ch-0/181.4445.84/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/jetbrainsToolbox/apps/CLion/ch-0/181.4445.84/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/rekurzivniSestup.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rekurzivniSestup.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rekurzivniSestup.dir/flags.make

CMakeFiles/rekurzivniSestup.dir/main.cpp.o: CMakeFiles/rekurzivniSestup.dir/flags.make
CMakeFiles/rekurzivniSestup.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rekurzivniSestup.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rekurzivniSestup.dir/main.cpp.o -c /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup/main.cpp

CMakeFiles/rekurzivniSestup.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rekurzivniSestup.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup/main.cpp > CMakeFiles/rekurzivniSestup.dir/main.cpp.i

CMakeFiles/rekurzivniSestup.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rekurzivniSestup.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup/main.cpp -o CMakeFiles/rekurzivniSestup.dir/main.cpp.s

CMakeFiles/rekurzivniSestup.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/rekurzivniSestup.dir/main.cpp.o.requires

CMakeFiles/rekurzivniSestup.dir/main.cpp.o.provides: CMakeFiles/rekurzivniSestup.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/rekurzivniSestup.dir/build.make CMakeFiles/rekurzivniSestup.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/rekurzivniSestup.dir/main.cpp.o.provides

CMakeFiles/rekurzivniSestup.dir/main.cpp.o.provides.build: CMakeFiles/rekurzivniSestup.dir/main.cpp.o


# Object files for target rekurzivniSestup
rekurzivniSestup_OBJECTS = \
"CMakeFiles/rekurzivniSestup.dir/main.cpp.o"

# External object files for target rekurzivniSestup
rekurzivniSestup_EXTERNAL_OBJECTS =

rekurzivniSestup: CMakeFiles/rekurzivniSestup.dir/main.cpp.o
rekurzivniSestup: CMakeFiles/rekurzivniSestup.dir/build.make
rekurzivniSestup: CMakeFiles/rekurzivniSestup.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rekurzivniSestup"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rekurzivniSestup.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rekurzivniSestup.dir/build: rekurzivniSestup

.PHONY : CMakeFiles/rekurzivniSestup.dir/build

CMakeFiles/rekurzivniSestup.dir/requires: CMakeFiles/rekurzivniSestup.dir/main.cpp.o.requires

.PHONY : CMakeFiles/rekurzivniSestup.dir/requires

CMakeFiles/rekurzivniSestup.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rekurzivniSestup.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rekurzivniSestup.dir/clean

CMakeFiles/rekurzivniSestup.dir/depend:
	cd /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup/cmake-build-debug /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup/cmake-build-debug /home/jencmart/Dropbox/development/fitcvut/bi-pjp/rekurzivniSestup/cmake-build-debug/CMakeFiles/rekurzivniSestup.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rekurzivniSestup.dir/depend

