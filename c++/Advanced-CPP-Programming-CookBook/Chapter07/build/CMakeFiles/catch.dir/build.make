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
CMAKE_SOURCE_DIR = /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build

# Utility rule file for catch.

# Include the progress variables for this target.
include CMakeFiles/catch.dir/progress.make

CMakeFiles/catch: CMakeFiles/catch-complete


CMakeFiles/catch-complete: catch-prefix/src/catch-stamp/catch-install
CMakeFiles/catch-complete: catch-prefix/src/catch-stamp/catch-mkdir
CMakeFiles/catch-complete: catch-prefix/src/catch-stamp/catch-download
CMakeFiles/catch-complete: catch-prefix/src/catch-stamp/catch-update
CMakeFiles/catch-complete: catch-prefix/src/catch-stamp/catch-patch
CMakeFiles/catch-complete: catch-prefix/src/catch-stamp/catch-configure
CMakeFiles/catch-complete: catch-prefix/src/catch-stamp/catch-build
CMakeFiles/catch-complete: catch-prefix/src/catch-stamp/catch-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'catch'"
	/usr/bin/cmake -E make_directory /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles
	/usr/bin/cmake -E touch /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles/catch-complete
	/usr/bin/cmake -E touch /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-stamp/catch-done

catch-prefix/src/catch-stamp/catch-install: catch-prefix/src/catch-stamp/catch-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'catch'"
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-build && $(MAKE) install
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-build && /usr/bin/cmake -E touch /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-stamp/catch-install

catch-prefix/src/catch-stamp/catch-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'catch'"
	/usr/bin/cmake -E make_directory /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch
	/usr/bin/cmake -E make_directory /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-build
	/usr/bin/cmake -E make_directory /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix
	/usr/bin/cmake -E make_directory /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/tmp
	/usr/bin/cmake -E make_directory /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-stamp
	/usr/bin/cmake -E make_directory /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src
	/usr/bin/cmake -E make_directory /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-stamp
	/usr/bin/cmake -E touch /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-stamp/catch-mkdir

catch-prefix/src/catch-stamp/catch-download: catch-prefix/src/catch-stamp/catch-gitinfo.txt
catch-prefix/src/catch-stamp/catch-download: catch-prefix/src/catch-stamp/catch-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'catch'"
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src && /usr/bin/cmake -P /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/tmp/catch-gitclone.cmake
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src && /usr/bin/cmake -E touch /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-stamp/catch-download

catch-prefix/src/catch-stamp/catch-update: catch-prefix/src/catch-stamp/catch-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'catch'"
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch && cmake -E echo "-- Skipping update"

catch-prefix/src/catch-stamp/catch-patch: catch-prefix/src/catch-stamp/catch-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'catch'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-stamp/catch-patch

catch-prefix/src/catch-stamp/catch-configure: catch-prefix/tmp/catch-cfgcmd.txt
catch-prefix/src/catch-stamp/catch-configure: catch-prefix/src/catch-stamp/catch-update
catch-prefix/src/catch-stamp/catch-configure: catch-prefix/src/catch-stamp/catch-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'catch'"
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-build && /usr/bin/cmake -DCMAKE_INSTALL_PREFIX=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/external/ "-GUnix Makefiles" /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-build && /usr/bin/cmake -E touch /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-stamp/catch-configure

catch-prefix/src/catch-stamp/catch-build: catch-prefix/src/catch-stamp/catch-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'catch'"
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-build && $(MAKE)
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-build && /usr/bin/cmake -E touch /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/catch-prefix/src/catch-stamp/catch-build

catch: CMakeFiles/catch
catch: CMakeFiles/catch-complete
catch: catch-prefix/src/catch-stamp/catch-install
catch: catch-prefix/src/catch-stamp/catch-mkdir
catch: catch-prefix/src/catch-stamp/catch-download
catch: catch-prefix/src/catch-stamp/catch-update
catch: catch-prefix/src/catch-stamp/catch-patch
catch: catch-prefix/src/catch-stamp/catch-configure
catch: catch-prefix/src/catch-stamp/catch-build
catch: CMakeFiles/catch.dir/build.make

.PHONY : catch

# Rule to build all files generated by this target.
CMakeFiles/catch.dir/build: catch

.PHONY : CMakeFiles/catch.dir/build

CMakeFiles/catch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/catch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/catch.dir/clean

CMakeFiles/catch.dir/depend:
	cd /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07 /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07 /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter07/build/CMakeFiles/catch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/catch.dir/depend

