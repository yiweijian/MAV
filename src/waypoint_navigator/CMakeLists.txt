cmake_minimum_required(VERSION 2.8.3)
project(waypoint_navigator)

add_definitions(-std=c++11)

find_package(catkin_simple REQUIRED)
find_package(geodetic_utils REQUIRED)
set(OpenCV_DIR /home/nuc/yi/opencv3.4/opencv3.4.6/build)
set(OpenCV_LIBS /home/nuc/yi/opencv3.4/cmake/lib)
#set(OpenCV_INCLUDE_DIRS /home/nuc/yi/opencv3.4/cmake/include )
find_package(OpenCV 3.4.6 REQUIRED)

#include_directories(${OpenCV_INCLUDE_DIRS})
include_directories("/home/nuc/yi/opencv3.4/cmake/include")
#include_directories("/home/nuc/yi/opencv3.4/opencv_contrib-3.4.6/modules/tracking/include")
#include_directories("/home/nuc/yi/opencv3.4/opencv3.4.6/include")

catkin_simple()

cs_add_executable(waypoint_navigator_node src/waypoint_navigator_node.cpp)

add_dependencies(waypoint_navigator_node ${${PROJECT_NAME}_EXPORTED_TARGETS})

target_link_libraries(waypoint_navigator_node
        ${catkin_LIBRARIES}
        ${OpenCV_LIBS}
        )

cs_install()
cs_export()
