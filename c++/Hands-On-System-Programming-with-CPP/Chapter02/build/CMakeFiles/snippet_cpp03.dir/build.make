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
CMAKE_SOURCE_DIR = /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02/build

# Include any dependencies generated for this target.
include CMakeFiles/snippet_cpp03.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/snippet_cpp03.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/snippet_cpp03.dir/flags.make

CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.o: CMakeFiles/snippet_cpp03.dir/flags.make
CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.o: ../scratchpad.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.o -c /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02/scratchpad.cpp

CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02/scratchpad.cpp > CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.i

CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02/scratchpad.cpp -o CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.s

# Object files for target snippet_cpp03
snippet_cpp03_OBJECTS = \
"CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.o"

# External object files for target snippet_cpp03
snippet_cpp03_EXTERNAL_OBJECTS =

snippet_cpp03: CMakeFiles/snippet_cpp03.dir/scratchpad.cpp.o
snippet_cpp03: CMakeFiles/snippet_cpp03.dir/build.make
snippet_cpp03: CMakeFiles/snippet_cpp03.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable snippet_cpp03"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/snippet_cpp03.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/snippet_cpp03.dir/build: snippet_cpp03

.PHONY : CMakeFiles/snippet_cpp03.dir/build

CMakeFiles/snippet_cpp03.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/snippet_cpp03.dir/cmake_clean.cmake
.PHONY : CMakeFiles/snippet_cpp03.dir/clean

CMakeFiles/snippet_cpp03.dir/depend:
	cd /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02 /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02 /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02/build /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02/build /root/Desktop/c/c++/Hands-On-System-Programming-with-CPP/Chapter02/build/CMakeFiles/snippet_cpp03.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/snippet_cpp03.dir/depend

