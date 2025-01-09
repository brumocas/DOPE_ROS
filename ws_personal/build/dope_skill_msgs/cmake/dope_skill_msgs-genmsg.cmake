# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dope_skill_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Idope_skill_msgs:/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dope_skill_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg" NAME_WE)
add_custom_target(_dope_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dope_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg" "dope_skill_msgs/DopeSkillGoal:dope_skill_msgs/DopeSkillFeedback:dope_skill_msgs/DopeSkillActionFeedback:geometry_msgs/Transform:dope_skill_msgs/DopeSkillActionGoal:geometry_msgs/TransformStamped:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:geometry_msgs/Quaternion:dope_skill_msgs/DopeSkillResult:geometry_msgs/Vector3:dope_skill_msgs/DopeSkillActionResult"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg" NAME_WE)
add_custom_target(_dope_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dope_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:dope_skill_msgs/DopeSkillGoal"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg" NAME_WE)
add_custom_target(_dope_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dope_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg" "geometry_msgs/Transform:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:geometry_msgs/Quaternion:dope_skill_msgs/DopeSkillResult:geometry_msgs/Vector3:geometry_msgs/TransformStamped"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg" NAME_WE)
add_custom_target(_dope_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dope_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg" "std_msgs/Header:dope_skill_msgs/DopeSkillFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg" NAME_WE)
add_custom_target(_dope_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dope_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg" ""
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg" NAME_WE)
add_custom_target(_dope_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dope_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg" "geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/TransformStamped"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg" NAME_WE)
add_custom_target(_dope_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dope_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_cpp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_cpp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_cpp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_cpp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_cpp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_cpp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dope_skill_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(dope_skill_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dope_skill_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dope_skill_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dope_skill_msgs_generate_messages dope_skill_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_cpp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_cpp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_cpp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_cpp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_cpp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_cpp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_cpp _dope_skill_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dope_skill_msgs_gencpp)
add_dependencies(dope_skill_msgs_gencpp dope_skill_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dope_skill_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_eus(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_eus(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_eus(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_eus(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_eus(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_eus(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dope_skill_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(dope_skill_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dope_skill_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dope_skill_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dope_skill_msgs_generate_messages dope_skill_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_eus _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_eus _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_eus _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_eus _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_eus _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_eus _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_eus _dope_skill_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dope_skill_msgs_geneus)
add_dependencies(dope_skill_msgs_geneus dope_skill_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dope_skill_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_lisp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_lisp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_lisp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_lisp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_lisp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_lisp(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dope_skill_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(dope_skill_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dope_skill_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dope_skill_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dope_skill_msgs_generate_messages dope_skill_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_lisp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_lisp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_lisp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_lisp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_lisp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_lisp _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_lisp _dope_skill_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dope_skill_msgs_genlisp)
add_dependencies(dope_skill_msgs_genlisp dope_skill_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dope_skill_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_nodejs(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_nodejs(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_nodejs(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_nodejs(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_nodejs(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_nodejs(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dope_skill_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(dope_skill_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dope_skill_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dope_skill_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dope_skill_msgs_generate_messages dope_skill_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_nodejs _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_nodejs _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_nodejs _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_nodejs _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_nodejs _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_nodejs _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_nodejs _dope_skill_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dope_skill_msgs_gennodejs)
add_dependencies(dope_skill_msgs_gennodejs dope_skill_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dope_skill_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_py(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_py(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_py(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_py(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_py(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs
)
_generate_msg_py(dope_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(dope_skill_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dope_skill_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dope_skill_msgs_generate_messages dope_skill_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillAction.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_py _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionGoal.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_py _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionResult.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_py _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillActionFeedback.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_py _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillGoal.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_py _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillResult.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_py _dope_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/dope_skill_msgs/share/dope_skill_msgs/msg/DopeSkillFeedback.msg" NAME_WE)
add_dependencies(dope_skill_msgs_generate_messages_py _dope_skill_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dope_skill_msgs_genpy)
add_dependencies(dope_skill_msgs_genpy dope_skill_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dope_skill_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dope_skill_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dope_skill_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(dope_skill_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dope_skill_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dope_skill_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dope_skill_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dope_skill_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(dope_skill_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dope_skill_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dope_skill_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dope_skill_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dope_skill_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(dope_skill_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dope_skill_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dope_skill_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dope_skill_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dope_skill_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(dope_skill_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dope_skill_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dope_skill_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dope_skill_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(dope_skill_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dope_skill_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dope_skill_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
