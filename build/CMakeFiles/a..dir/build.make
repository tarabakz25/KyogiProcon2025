# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kz/KyogiProcon2025

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kz/KyogiProcon2025/build

# Include any dependencies generated for this target.
include CMakeFiles/a..dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/a..dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/a..dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/a..dir/flags.make

CMakeFiles/a..dir/codegen:
.PHONY : CMakeFiles/a..dir/codegen

CMakeFiles/a..dir/src/main.cc.o: CMakeFiles/a..dir/flags.make
CMakeFiles/a..dir/src/main.cc.o: /Users/kz/KyogiProcon2025/src/main.cc
CMakeFiles/a..dir/src/main.cc.o: CMakeFiles/a..dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kz/KyogiProcon2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/a..dir/src/main.cc.o"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/a..dir/src/main.cc.o -MF CMakeFiles/a..dir/src/main.cc.o.d -o CMakeFiles/a..dir/src/main.cc.o -c /Users/kz/KyogiProcon2025/src/main.cc

CMakeFiles/a..dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/a..dir/src/main.cc.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kz/KyogiProcon2025/src/main.cc > CMakeFiles/a..dir/src/main.cc.i

CMakeFiles/a..dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/a..dir/src/main.cc.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kz/KyogiProcon2025/src/main.cc -o CMakeFiles/a..dir/src/main.cc.s

# Object files for target a.
a__OBJECTS = \
"CMakeFiles/a..dir/src/main.cc.o"

# External object files for target a.
a__EXTERNAL_OBJECTS =

a.: CMakeFiles/a..dir/src/main.cc.o
a.: CMakeFiles/a..dir/build.make
a.: CMakeFiles/a..dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/kz/KyogiProcon2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable a."
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/a..dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/a..dir/build: a.
.PHONY : CMakeFiles/a..dir/build

CMakeFiles/a..dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/a..dir/cmake_clean.cmake
.PHONY : CMakeFiles/a..dir/clean

CMakeFiles/a..dir/depend:
	cd /Users/kz/KyogiProcon2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kz/KyogiProcon2025 /Users/kz/KyogiProcon2025 /Users/kz/KyogiProcon2025/build /Users/kz/KyogiProcon2025/build /Users/kz/KyogiProcon2025/build/CMakeFiles/a..dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/a..dir/depend

