# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ldelphie/source/shiny-server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ldelphie/source/shiny-server/tmp

# Include any dependencies generated for this target.
include src/CMakeFiles/shiny-server.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/shiny-server.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/shiny-server.dir/flags.make

src/CMakeFiles/shiny-server.dir/launcher.cc.o: src/CMakeFiles/shiny-server.dir/flags.make
src/CMakeFiles/shiny-server.dir/launcher.cc.o: ../src/launcher.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ldelphie/source/shiny-server/tmp/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/shiny-server.dir/launcher.cc.o"
	cd /home/ldelphie/source/shiny-server/tmp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/shiny-server.dir/launcher.cc.o -c /home/ldelphie/source/shiny-server/src/launcher.cc

src/CMakeFiles/shiny-server.dir/launcher.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shiny-server.dir/launcher.cc.i"
	cd /home/ldelphie/source/shiny-server/tmp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ldelphie/source/shiny-server/src/launcher.cc > CMakeFiles/shiny-server.dir/launcher.cc.i

src/CMakeFiles/shiny-server.dir/launcher.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shiny-server.dir/launcher.cc.s"
	cd /home/ldelphie/source/shiny-server/tmp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ldelphie/source/shiny-server/src/launcher.cc -o CMakeFiles/shiny-server.dir/launcher.cc.s

src/CMakeFiles/shiny-server.dir/launcher.cc.o.requires:
.PHONY : src/CMakeFiles/shiny-server.dir/launcher.cc.o.requires

src/CMakeFiles/shiny-server.dir/launcher.cc.o.provides: src/CMakeFiles/shiny-server.dir/launcher.cc.o.requires
	$(MAKE) -f src/CMakeFiles/shiny-server.dir/build.make src/CMakeFiles/shiny-server.dir/launcher.cc.o.provides.build
.PHONY : src/CMakeFiles/shiny-server.dir/launcher.cc.o.provides

src/CMakeFiles/shiny-server.dir/launcher.cc.o.provides.build: src/CMakeFiles/shiny-server.dir/launcher.cc.o

# Object files for target shiny-server
shiny__server_OBJECTS = \
"CMakeFiles/shiny-server.dir/launcher.cc.o"

# External object files for target shiny-server
shiny__server_EXTERNAL_OBJECTS =

../bin/shiny-server: src/CMakeFiles/shiny-server.dir/launcher.cc.o
../bin/shiny-server: src/CMakeFiles/shiny-server.dir/build.make
../bin/shiny-server: src/CMakeFiles/shiny-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/shiny-server"
	cd /home/ldelphie/source/shiny-server/tmp/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shiny-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/shiny-server.dir/build: ../bin/shiny-server
.PHONY : src/CMakeFiles/shiny-server.dir/build

src/CMakeFiles/shiny-server.dir/requires: src/CMakeFiles/shiny-server.dir/launcher.cc.o.requires
.PHONY : src/CMakeFiles/shiny-server.dir/requires

src/CMakeFiles/shiny-server.dir/clean:
	cd /home/ldelphie/source/shiny-server/tmp/src && $(CMAKE_COMMAND) -P CMakeFiles/shiny-server.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/shiny-server.dir/clean

src/CMakeFiles/shiny-server.dir/depend:
	cd /home/ldelphie/source/shiny-server/tmp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldelphie/source/shiny-server /home/ldelphie/source/shiny-server/src /home/ldelphie/source/shiny-server/tmp /home/ldelphie/source/shiny-server/tmp/src /home/ldelphie/source/shiny-server/tmp/src/CMakeFiles/shiny-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/shiny-server.dir/depend

