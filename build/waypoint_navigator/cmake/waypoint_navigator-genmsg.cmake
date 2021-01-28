# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "waypoint_navigator: 0 messages, 5 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Imav_msgs:/home/nuc/yi/vins/vins_catkin_ws/src/mav_comm/mav_msgs/msg;-Imav_planning_msgs:/home/nuc/yi/vins/vins_catkin_ws/src/mav_comm/mav_planning_msgs/msg;-Iroscpp:/opt/ros/indigo/share/roscpp/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/indigo/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(waypoint_navigator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/ExecutePathFromFile.srv" NAME_WE)
add_custom_target(_waypoint_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoint_navigator" "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/ExecutePathFromFile.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoint.srv" NAME_WE)
add_custom_target(_waypoint_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoint_navigator" "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoint.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoints.srv" NAME_WE)
add_custom_target(_waypoint_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoint_navigator" "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoints.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToPoseWaypoints.srv" NAME_WE)
add_custom_target(_waypoint_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoint_navigator" "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToPoseWaypoints.srv" "geometry_msgs/Quaternion:std_msgs/String:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToHeight.srv" NAME_WE)
add_custom_target(_waypoint_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waypoint_navigator" "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToHeight.srv" "std_msgs/Float64"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/ExecutePathFromFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_cpp(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_cpp(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_cpp(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToPoseWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_cpp(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToHeight.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoint_navigator
)

### Generating Module File
_generate_module_cpp(waypoint_navigator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoint_navigator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(waypoint_navigator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(waypoint_navigator_generate_messages waypoint_navigator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/ExecutePathFromFile.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_cpp _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoint.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_cpp _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoints.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_cpp _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToPoseWaypoints.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_cpp _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToHeight.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_cpp _waypoint_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waypoint_navigator_gencpp)
add_dependencies(waypoint_navigator_gencpp waypoint_navigator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waypoint_navigator_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/ExecutePathFromFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_lisp(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_lisp(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_lisp(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToPoseWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_lisp(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToHeight.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoint_navigator
)

### Generating Module File
_generate_module_lisp(waypoint_navigator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoint_navigator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(waypoint_navigator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(waypoint_navigator_generate_messages waypoint_navigator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/ExecutePathFromFile.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_lisp _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoint.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_lisp _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoints.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_lisp _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToPoseWaypoints.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_lisp _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToHeight.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_lisp _waypoint_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waypoint_navigator_genlisp)
add_dependencies(waypoint_navigator_genlisp waypoint_navigator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waypoint_navigator_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/ExecutePathFromFile.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_py(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_py(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_py(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToPoseWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoint_navigator
)
_generate_srv_py(waypoint_navigator
  "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToHeight.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoint_navigator
)

### Generating Module File
_generate_module_py(waypoint_navigator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoint_navigator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(waypoint_navigator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(waypoint_navigator_generate_messages waypoint_navigator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/ExecutePathFromFile.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_py _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoint.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_py _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToWaypoints.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_py _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToPoseWaypoints.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_py _waypoint_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/waypoint_navigator/srv/GoToHeight.srv" NAME_WE)
add_dependencies(waypoint_navigator_generate_messages_py _waypoint_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waypoint_navigator_genpy)
add_dependencies(waypoint_navigator_genpy waypoint_navigator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waypoint_navigator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoint_navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waypoint_navigator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(waypoint_navigator_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET mav_msgs_generate_messages_cpp)
  add_dependencies(waypoint_navigator_generate_messages_cpp mav_msgs_generate_messages_cpp)
endif()
if(TARGET mav_planning_msgs_generate_messages_cpp)
  add_dependencies(waypoint_navigator_generate_messages_cpp mav_planning_msgs_generate_messages_cpp)
endif()
if(TARGET roscpp_generate_messages_cpp)
  add_dependencies(waypoint_navigator_generate_messages_cpp roscpp_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(waypoint_navigator_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(waypoint_navigator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoint_navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waypoint_navigator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(waypoint_navigator_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET mav_msgs_generate_messages_lisp)
  add_dependencies(waypoint_navigator_generate_messages_lisp mav_msgs_generate_messages_lisp)
endif()
if(TARGET mav_planning_msgs_generate_messages_lisp)
  add_dependencies(waypoint_navigator_generate_messages_lisp mav_planning_msgs_generate_messages_lisp)
endif()
if(TARGET roscpp_generate_messages_lisp)
  add_dependencies(waypoint_navigator_generate_messages_lisp roscpp_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(waypoint_navigator_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(waypoint_navigator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoint_navigator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoint_navigator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waypoint_navigator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(waypoint_navigator_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET mav_msgs_generate_messages_py)
  add_dependencies(waypoint_navigator_generate_messages_py mav_msgs_generate_messages_py)
endif()
if(TARGET mav_planning_msgs_generate_messages_py)
  add_dependencies(waypoint_navigator_generate_messages_py mav_planning_msgs_generate_messages_py)
endif()
if(TARGET roscpp_generate_messages_py)
  add_dependencies(waypoint_navigator_generate_messages_py roscpp_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(waypoint_navigator_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(waypoint_navigator_generate_messages_py std_msgs_generate_messages_py)
endif()
