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
CMAKE_SOURCE_DIR = /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10/build

# Include any dependencies generated for this target.
include CMakeFiles/recipe01_example08.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/recipe01_example08.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/recipe01_example08.dir/flags.make

CMakeFiles/recipe01_example08.dir/recipe01.cpp.o: CMakeFiles/recipe01_example08.dir/flags.make
CMakeFiles/recipe01_example08.dir/recipe01.cpp.o: ../recipe01.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/recipe01_example08.dir/recipe01.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/recipe01_example08.dir/recipe01.cpp.o -c /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10/recipe01.cpp

CMakeFiles/recipe01_example08.dir/recipe01.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/recipe01_example08.dir/recipe01.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10/recipe01.cpp > CMakeFiles/recipe01_example08.dir/recipe01.cpp.i

CMakeFiles/recipe01_example08.dir/recipe01.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/recipe01_example08.dir/recipe01.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10/recipe01.cpp -o CMakeFiles/recipe01_example08.dir/recipe01.cpp.s

# Object files for target recipe01_example08
recipe01_example08_OBJECTS = \
"CMakeFiles/recipe01_example08.dir/recipe01.cpp.o"

# External object files for target recipe01_example08
recipe01_example08_EXTERNAL_OBJECTS =

recipe01_example08: CMakeFiles/recipe01_example08.dir/recipe01.cpp.o
recipe01_example08: CMakeFiles/recipe01_example08.dir/build.make
recipe01_example08: CMakeFiles/recipe01_example08.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable recipe01_example08"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recipe01_example08.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/recipe01_example08.dir/build: recipe01_example08

.PHONY : CMakeFiles/recipe01_example08.dir/build

CMakeFiles/recipe01_example08.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/recipe01_example08.dir/cmake_clean.cmake
.PHONY : CMakeFiles/recipe01_example08.dir/clean

CMakeFiles/recipe01_example08.dir/depend:
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10 /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10 /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10/build /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10/build /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter10/build/CMakeFiles/recipe01_example08.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/recipe01_example08.dir/depend

