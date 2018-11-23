##########################################################
# Name : - CMakeLists.txt (Halt)
# 
#
#
##########################################################
cmake_minimum_required(VERSION 2.8.11)

project(Utilities)

set(TOL ${CMAKE_CURRENT_SOURCE_DIR}/../../Danlawv2x_toolchain.cfg)

include(${TOL})

set(BIN_NAME "Halt")
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../bin/)
set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src/halt-cmd.c)

include_directories(${SOURCE_DIR})

add_executable (${BIN_NAME} ${SOURCE_DIR})

install (TARGETS ${BIN_NAME} DESTINATION ${EXECUTABLE_OUTPUT_PATH})
