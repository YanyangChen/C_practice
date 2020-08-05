# - Config file for the hayai package
#
#  HAYAI_INCLUDE_DIRS - include directories for hayai
#  HAYAI_LIBRARIES    - libraries to link against

# Compute paths.
get_filename_component(HAYAI_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(HAYAI_INCLUDE_DIRS "${HAYAI_CMAKE_DIR}/../../../include")

# Library dependencies (contains definitions for IMPORTED targets.)
include("${HAYAI_CMAKE_DIR}/hayai-targets.cmake")

# These are IMPORTED targets created by hayai-targets.cmake.
set(HAYAI_LIBRARIES hayai_main rt)
