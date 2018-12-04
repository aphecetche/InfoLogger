# get path to this file
get_filename_component(INFOLOGGER_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
message(STATUS "InfoLogger found - using cmake targets in ${INFOLOGGER_CMAKE_DIR}")

# dependencies for clients using the library
# we now package a standalone version of libInfoLogger
# so the lines below are not needed - kept for reference
# include(CMakeFindDependencyMacro)
# find_dependency(Common REQUIRED)

# declare InfoLogger target
if(NOT TARGET AliceO2::InfoLogger)
  include("${INFOLOGGER_CMAKE_DIR}/InfoLoggerTargets.cmake")
endif()

# declare variable for backward compatibility in client programs not using cmake targets
set(InfoLogger_LIBRARIES AliceO2::InfoLogger)
