# Install script for directory: /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai/hayai-config.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai" TYPE FILE FILES "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai-build/CMakeFiles/hayai-config.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai/hayai-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai/hayai-targets.cmake"
         "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai-build/CMakeFiles/Export/_root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai/hayai-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai/hayai-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai/hayai-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai/hayai-targets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai" TYPE FILE FILES "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai-build/CMakeFiles/Export/_root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai/hayai-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai/hayai-targets-noconfig.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai" TYPE FILE FILES "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai-build/CMakeFiles/Export/_root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/CMake/hayai/hayai-targets-noconfig.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai-build/src/cmake_install.cmake")
  include("/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai-build/sample/cmake_install.cmake")
  include("/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai-build/vendor/gtest/cmake_install.cmake")
  include("/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai-build/tests/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
