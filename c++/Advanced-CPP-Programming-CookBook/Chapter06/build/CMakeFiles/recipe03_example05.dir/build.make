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
CMAKE_SOURCE_DIR = /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build

# Include any dependencies generated for this target.
include CMakeFiles/recipe03_example05.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/recipe03_example05.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/recipe03_example05.dir/flags.make

CMakeFiles/recipe03_example05.dir/recipe03.cpp.o: CMakeFiles/recipe03_example05.dir/flags.make
CMakeFiles/recipe03_example05.dir/recipe03.cpp.o: ../recipe03.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/recipe03_example05.dir/recipe03.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/recipe03_example05.dir/recipe03.cpp.o -c /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/recipe03.cpp

CMakeFiles/recipe03_example05.dir/recipe03.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/recipe03_example05.dir/recipe03.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/recipe03.cpp > CMakeFiles/recipe03_example05.dir/recipe03.cpp.i

CMakeFiles/recipe03_example05.dir/recipe03.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/recipe03_example05.dir/recipe03.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/recipe03.cpp -o CMakeFiles/recipe03_example05.dir/recipe03.cpp.s

# Object files for target recipe03_example05
recipe03_example05_OBJECTS = \
"CMakeFiles/recipe03_example05.dir/recipe03.cpp.o"

# External object files for target recipe03_example05
recipe03_example05_EXTERNAL_OBJECTS =

recipe03_example05: CMakeFiles/recipe03_example05.dir/recipe03.cpp.o
recipe03_example05: CMakeFiles/recipe03_example05.dir/build.make
recipe03_example05: CMakeFiles/recipe03_example05.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable recipe03_example05"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recipe03_example05.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/recipe03_example05.dir/build: recipe03_example05

.PHONY : CMakeFiles/recipe03_example05.dir/build

CMakeFiles/recipe03_example05.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/recipe03_example05.dir/cmake_clean.cmake
.PHONY : CMakeFiles/recipe03_example05.dir/clean

CMakeFiles/recipe03_example05.dir/depend:
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06 /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06 /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/CMakeFiles/recipe03_example05.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/recipe03_example05.dir/depend

