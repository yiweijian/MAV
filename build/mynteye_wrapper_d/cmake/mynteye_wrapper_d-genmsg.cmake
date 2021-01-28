# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mynteye_wrapper_d: 1 messages, 1 services")

set(MSG_I_FLAGS "-Imynteye_wrapper_d:/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mynteye_wrapper_d_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/msg/Temp.msg" NAME_WE)
add_custom_target(_mynteye_wrapper_d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mynteye_wrapper_d" "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/msg/Temp.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/srv/GetParams.srv" NAME_WE)
add_custom_target(_mynteye_wrapper_d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mynteye_wrapper_d" "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/srv/GetParams.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mynteye_wrapper_d
  "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/msg/Temp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mynteye_wrapper_d
)

### Generating Services
_generate_srv_cpp(mynteye_wrapper_d
  "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/srv/GetParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mynteye_wrapper_d
)

### Generating Module File
_generate_module_cpp(mynteye_wrapper_d
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mynteye_wrapper_d
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mynteye_wrapper_d_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mynteye_wrapper_d_generate_messages mynteye_wrapper_d_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/msg/Temp.msg" NAME_WE)
add_dependencies(mynteye_wrapper_d_generate_messages_cpp _mynteye_wrapper_d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/srv/GetParams.srv" NAME_WE)
add_dependencies(mynteye_wrapper_d_generate_messages_cpp _mynteye_wrapper_d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mynteye_wrapper_d_gencpp)
add_dependencies(mynteye_wrapper_d_gencpp mynteye_wrapper_d_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mynteye_wrapper_d_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mynteye_wrapper_d
  "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/msg/Temp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mynteye_wrapper_d
)

### Generating Services
_generate_srv_lisp(mynteye_wrapper_d
  "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/srv/GetParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mynteye_wrapper_d
)

### Generating Module File
_generate_module_lisp(mynteye_wrapper_d
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mynteye_wrapper_d
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mynteye_wrapper_d_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mynteye_wrapper_d_generate_messages mynteye_wrapper_d_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/msg/Temp.msg" NAME_WE)
add_dependencies(mynteye_wrapper_d_generate_messages_lisp _mynteye_wrapper_d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/srv/GetParams.srv" NAME_WE)
add_dependencies(mynteye_wrapper_d_generate_messages_lisp _mynteye_wrapper_d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mynteye_wrapper_d_genlisp)
add_dependencies(mynteye_wrapper_d_genlisp mynteye_wrapper_d_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mynteye_wrapper_d_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mynteye_wrapper_d
  "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/msg/Temp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynteye_wrapper_d
)

### Generating Services
_generate_srv_py(mynteye_wrapper_d
  "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/srv/GetParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynteye_wrapper_d
)

### Generating Module File
_generate_module_py(mynteye_wrapper_d
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynteye_wrapper_d
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mynteye_wrapper_d_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mynteye_wrapper_d_generate_messages mynteye_wrapper_d_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/msg/Temp.msg" NAME_WE)
add_dependencies(mynteye_wrapper_d_generate_messages_py _mynteye_wrapper_d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/yi/vins/vins_catkin_ws/src/mynteye/src/mynteye_wrapper_d/srv/GetParams.srv" NAME_WE)
add_dependencies(mynteye_wrapper_d_generate_messages_py _mynteye_wrapper_d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mynteye_wrapper_d_genpy)
add_dependencies(mynteye_wrapper_d_genpy mynteye_wrapper_d_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mynteye_wrapper_d_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mynteye_wrapper_d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mynteye_wrapper_d
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mynteye_wrapper_d_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mynteye_wrapper_d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mynteye_wrapper_d
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mynteye_wrapper_d_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynteye_wrapper_d)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynteye_wrapper_d\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mynteye_wrapper_d
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mynteye_wrapper_d_generate_messages_py std_msgs_generate_messages_py)
endif()
