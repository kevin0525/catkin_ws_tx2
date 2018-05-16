# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "detect_hog: 2 messages, 0 services")

set(MSG_I_FLAGS "-Idetect_hog:/home/nvidia/catkin_tx2/src/detect_hog/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(detect_hog_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg" NAME_WE)
add_custom_target(_detect_hog_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "detect_hog" "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg" ""
)

get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg" NAME_WE)
add_custom_target(_detect_hog_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "detect_hog" "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(detect_hog
  "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detect_hog
)
_generate_msg_cpp(detect_hog
  "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detect_hog
)

### Generating Services

### Generating Module File
_generate_module_cpp(detect_hog
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detect_hog
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(detect_hog_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(detect_hog_generate_messages detect_hog_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg" NAME_WE)
add_dependencies(detect_hog_generate_messages_cpp _detect_hog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg" NAME_WE)
add_dependencies(detect_hog_generate_messages_cpp _detect_hog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detect_hog_gencpp)
add_dependencies(detect_hog_gencpp detect_hog_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detect_hog_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(detect_hog
  "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/detect_hog
)
_generate_msg_eus(detect_hog
  "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/detect_hog
)

### Generating Services

### Generating Module File
_generate_module_eus(detect_hog
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/detect_hog
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(detect_hog_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(detect_hog_generate_messages detect_hog_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg" NAME_WE)
add_dependencies(detect_hog_generate_messages_eus _detect_hog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg" NAME_WE)
add_dependencies(detect_hog_generate_messages_eus _detect_hog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detect_hog_geneus)
add_dependencies(detect_hog_geneus detect_hog_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detect_hog_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(detect_hog
  "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detect_hog
)
_generate_msg_lisp(detect_hog
  "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detect_hog
)

### Generating Services

### Generating Module File
_generate_module_lisp(detect_hog
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detect_hog
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(detect_hog_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(detect_hog_generate_messages detect_hog_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg" NAME_WE)
add_dependencies(detect_hog_generate_messages_lisp _detect_hog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg" NAME_WE)
add_dependencies(detect_hog_generate_messages_lisp _detect_hog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detect_hog_genlisp)
add_dependencies(detect_hog_genlisp detect_hog_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detect_hog_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(detect_hog
  "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/detect_hog
)
_generate_msg_nodejs(detect_hog
  "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/detect_hog
)

### Generating Services

### Generating Module File
_generate_module_nodejs(detect_hog
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/detect_hog
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(detect_hog_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(detect_hog_generate_messages detect_hog_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg" NAME_WE)
add_dependencies(detect_hog_generate_messages_nodejs _detect_hog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg" NAME_WE)
add_dependencies(detect_hog_generate_messages_nodejs _detect_hog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detect_hog_gennodejs)
add_dependencies(detect_hog_gennodejs detect_hog_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detect_hog_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(detect_hog
  "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detect_hog
)
_generate_msg_py(detect_hog
  "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detect_hog
)

### Generating Services

### Generating Module File
_generate_module_py(detect_hog
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detect_hog
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(detect_hog_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(detect_hog_generate_messages detect_hog_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamGlobalPos.msg" NAME_WE)
add_dependencies(detect_hog_generate_messages_py _detect_hog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_tx2/src/detect_hog/msg/RobotCamPos.msg" NAME_WE)
add_dependencies(detect_hog_generate_messages_py _detect_hog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detect_hog_genpy)
add_dependencies(detect_hog_genpy detect_hog_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detect_hog_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detect_hog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detect_hog
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(detect_hog_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/detect_hog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/detect_hog
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(detect_hog_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detect_hog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detect_hog
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(detect_hog_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/detect_hog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/detect_hog
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(detect_hog_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detect_hog)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detect_hog\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detect_hog
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(detect_hog_generate_messages_py std_msgs_generate_messages_py)
endif()
