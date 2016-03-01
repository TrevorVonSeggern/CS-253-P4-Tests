cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(${PROJECT_NAME}_check)

set(EXECUTABLE check)

SET (SRCS
		fileReader.cpp
		)

add_executable(${EXECUTABLE} main.cpp ${SRCS})

#Link x11 (for the PoseDisplay that the professor gave us...)
find_package(X11 REQUIRED)
include_directories(${X11_INCLUDE_DIR})
target_link_libraries(${EXECUTABLE} ${X11_LIBRARIES})
