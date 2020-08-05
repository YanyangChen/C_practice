# Install script for directory: /root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xbinx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib/libhayai_main.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/lib" TYPE STATIC_LIBRARY FILES "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai-build/src/libhayai_main.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_benchmarker.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_clock.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_compatibility.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_console.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_console_outputter.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_default_test_factory.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_fixture.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_json_outputter.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_junit_xml_outputter.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_main.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_outputter.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_test.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_test_descriptor.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_test_factory.hpp;/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai/hayai_test_result.hpp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/external/include/hayai" TYPE FILE FILES
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_benchmarker.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_clock.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_compatibility.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_console.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_console_outputter.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_default_test_factory.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_fixture.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_json_outputter.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_junit_xml_outputter.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_main.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_outputter.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_test.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_test_descriptor.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_test_factory.hpp"
    "/root/Desktop/c/c++/Advanced-CPP-Programming-CookBook/Chapter06/build/hayai-prefix/src/hayai/src/hayai_test_result.hpp"
    )
endif()

