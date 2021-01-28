# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mav_disturbance_observer: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imav_disturbance_observer:/home/nuc/yi/vins/vins_catkin_ws/src/mav_control_rw/mav_disturbance_observer/msg;-Idynamic_reconfigure:/opt/ros/indigo/share/dynamic_reconfigure/cmake/../msg;-Imav_msgs:/home/nuc/yi/vins/vins_catkin_ws/src/mav_comm/mav_msgs/msg;-Iroscpp:/opt/ros/indigo/share/roscpp/cmake/../msg;-Itf:/opt/ros/indigo/share/tf/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mav_disturbance_observer_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mav_control_rw/mav_disturbance_observer/msg/ObserverState.msg" NAME_WE)
add_custom_target(_mav_disturbance_observer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_disturbance_observer" "/home/nuc/yi/vins/vins_catkin_ws/src/mav_control_rw/mav_disturbance_observer/msg/ObserverState.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mav_disturbance_observer
  "/home/nuc/yi/vins/vins_catkin_ws/src/mav_control_rw/mav_disturbance_observer/msg/ObserverState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_disturbance_observer
)

### Generating Services

### Generating Module File
_generate_module_cpp(mav_disturbance_observer
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_disturbance_observer
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mav_disturbance_observer_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mav_disturbance_observer_generate_messages mav_disturbance_observer_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mav_control_rw/mav_disturbance_observer/msg/ObserverState.msg" NAME_WE)
add_dependencies(mav_disturbance_observer_generate_messages_cpp _mav_disturbance_observer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_disturbance_observer_gencpp)
add_dependencies(mav_disturbance_observer_gencpp mav_disturbance_observer_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_disturbance_observer_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mav_disturbance_observer
  "/home/nuc/yi/vins/vins_catkin_ws/src/mav_control_rw/mav_disturbance_observer/msg/ObserverState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_disturbance_observer
)

### Generating Services

### Generating Module File
_generate_module_lisp(mav_disturbance_observer
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_disturbance_observer
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mav_disturbance_observer_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mav_disturbance_observer_generate_messages mav_disturbance_observer_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mav_control_rw/mav_disturbance_observer/msg/ObserverState.msg" NAME_WE)
add_dependencies(mav_disturbance_observer_generate_messages_lisp _mav_disturbance_observer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_disturbance_observer_genlisp)
add_dependencies(mav_disturbance_observer_genlisp mav_disturbance_observer_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_disturbance_observer_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mav_disturbance_observer
  "/home/nuc/yi/vins/vins_catkin_ws/src/mav_control_rw/mav_disturbance_observer/msg/ObserverState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_disturbance_observer
)

### Generating Services

### Generating Module File
_generate_module_py(mav_disturbance_observer
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_disturbance_observer
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mav_disturbance_observer_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mav_disturbance_observer_generate_messages mav_disturbance_observer_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mav_control_rw/mav_disturbance_observer/msg/ObserverState.msg" NAME_WE)
add_dependencies(mav_disturbance_observer_generate_messages_py _mav_disturbance_observer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_disturbance_observer_genpy)
add_dependencies(mav_disturbance_observer_genpy mav_disturbance_observer_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_disturbance_observer_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_disturbance_observer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_disturbance_observer
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET dynamic_reconfigure_generate_messages_cpp)
  add_dependencies(mav_disturbance_observer_generate_messages_cpp dynamic_reconfigure_generate_messages_cpp)
endif()
if(TARGET mav_msgs_generate_messages_cpp)
  add_dependencies(mav_disturbance_observer_generate_messages_cpp mav_msgs_generate_messages_cpp)
endif()
if(TARGET roscpp_generate_messages_cpp)
  add_dependencies(mav_disturbance_observer_generate_messages_cpp roscpp_generate_messages_cpp)
endif()
if(TARGET tf_generate_messages_cpp)
  add_dependencies(mav_disturbance_observer_generate_messages_cpp tf_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_disturbance_observer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_disturbance_observer
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET dynamic_reconfigure_generate_messages_lisp)
  add_dependencies(mav_disturbance_observer_generate_messages_lisp dynamic_reconfigure_generate_messages_lisp)
endif()
if(TARGET mav_msgs_generate_messages_lisp)
  add_dependencies(mav_disturbance_observer_generate_messages_lisp mav_msgs_generate_messages_lisp)
endif()
if(TARGET roscpp_generate_messages_lisp)
  add_dependencies(mav_disturbance_observer_generate_messages_lisp roscpp_generate_messages_lisp)
endif()
if(TARGET tf_generate_messages_lisp)
  add_dependencies(mav_disturbance_observer_generate_messages_lisp tf_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_disturbance_observer)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_disturbance_observer\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_disturbance_observer
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET dynamic_reconfigure_generate_messages_py)
  add_dependencies(mav_disturbance_observer_generate_messages_py dynamic_reconfigure_generate_messages_py)
endif()
if(TARGET mav_msgs_generate_messages_py)
  add_dependencies(mav_disturbance_observer_generate_messages_py mav_msgs_generate_messages_py)
endif()
if(TARGET roscpp_generate_messages_py)
  add_dependencies(mav_disturbance_observer_generate_messages_py roscpp_generate_messages_py)
endif()
if(TARGET tf_generate_messages_py)
  add_dependencies(mav_disturbance_observer_generate_messages_py tf_generate_messages_py)
endif()
