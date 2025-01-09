# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "image_segmentation_skill_msgs: 8 messages, 0 services")

set(MSG_I_FLAGS "-Iimage_segmentation_skill_msgs:/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg;-Iimage_segmentation_skill_msgs:/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(image_segmentation_skill_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg" NAME_WE)
add_custom_target(_image_segmentation_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_segmentation_skill_msgs" "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg" "sensor_msgs/Image:std_msgs/MultiArrayDimension:std_msgs/Float32MultiArray:std_msgs/MultiArrayLayout:std_msgs/Header"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg" NAME_WE)
add_custom_target(_image_segmentation_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_segmentation_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg" "sensor_msgs/Image:image_segmentation_skill_msgs/ImageSegmentationSkillGoal:image_segmentation_skill_msgs/ImageSegmentationSkillFeedback:actionlib_msgs/GoalStatus:std_msgs/MultiArrayDimension:image_segmentation_skill_msgs/ImageSegmentationSkillResult:image_segmentation_skill_msgs/ImageSegmentationSkillActionGoal:image_segmentation_skill_msgs/ImageSegmentationSkillActionResult:std_msgs/Float32MultiArray:std_msgs/MultiArrayLayout:image_segmentation_skill_msgs/ImageSegmentationSkillActionFeedback:image_segmentation_skill_msgs/MaskDefinition:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg" NAME_WE)
add_custom_target(_image_segmentation_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_segmentation_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg" "image_segmentation_skill_msgs/ImageSegmentationSkillGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg" NAME_WE)
add_custom_target(_image_segmentation_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_segmentation_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg" "sensor_msgs/Image:actionlib_msgs/GoalStatus:std_msgs/MultiArrayDimension:image_segmentation_skill_msgs/ImageSegmentationSkillResult:std_msgs/Float32MultiArray:std_msgs/MultiArrayLayout:image_segmentation_skill_msgs/MaskDefinition:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg" NAME_WE)
add_custom_target(_image_segmentation_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_segmentation_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg" "image_segmentation_skill_msgs/ImageSegmentationSkillFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg" NAME_WE)
add_custom_target(_image_segmentation_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_segmentation_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg" ""
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg" NAME_WE)
add_custom_target(_image_segmentation_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_segmentation_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg" "sensor_msgs/Image:std_msgs/MultiArrayDimension:std_msgs/Float32MultiArray:std_msgs/MultiArrayLayout:image_segmentation_skill_msgs/MaskDefinition:std_msgs/Header"
)

get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg" NAME_WE)
add_custom_target(_image_segmentation_skill_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_segmentation_skill_msgs" "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_cpp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_cpp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_cpp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_cpp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_cpp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_cpp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_cpp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(image_segmentation_skill_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(image_segmentation_skill_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(image_segmentation_skill_msgs_generate_messages image_segmentation_skill_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_segmentation_skill_msgs_gencpp)
add_dependencies(image_segmentation_skill_msgs_gencpp image_segmentation_skill_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_segmentation_skill_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_eus(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_eus(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_eus(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_eus(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_eus(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_eus(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_eus(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(image_segmentation_skill_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(image_segmentation_skill_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(image_segmentation_skill_msgs_generate_messages image_segmentation_skill_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_eus _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_eus _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_eus _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_eus _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_eus _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_eus _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_eus _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_eus _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_segmentation_skill_msgs_geneus)
add_dependencies(image_segmentation_skill_msgs_geneus image_segmentation_skill_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_segmentation_skill_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_lisp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_lisp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_lisp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_lisp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_lisp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_lisp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_lisp(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(image_segmentation_skill_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(image_segmentation_skill_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(image_segmentation_skill_msgs_generate_messages image_segmentation_skill_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_segmentation_skill_msgs_genlisp)
add_dependencies(image_segmentation_skill_msgs_genlisp image_segmentation_skill_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_segmentation_skill_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_nodejs(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_nodejs(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_nodejs(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_nodejs(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_nodejs(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_nodejs(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_nodejs(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(image_segmentation_skill_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(image_segmentation_skill_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(image_segmentation_skill_msgs_generate_messages image_segmentation_skill_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_segmentation_skill_msgs_gennodejs)
add_dependencies(image_segmentation_skill_msgs_gennodejs image_segmentation_skill_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_segmentation_skill_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_py(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_py(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_py(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_py(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_py(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_py(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs
)
_generate_msg_py(image_segmentation_skill_msgs
  "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(image_segmentation_skill_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(image_segmentation_skill_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(image_segmentation_skill_msgs_generate_messages image_segmentation_skill_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/src/image_segmentation/image_segmentation_skill_msgs/msg/MaskDefinition.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_py _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillAction.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_py _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionGoal.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_py _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionResult.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_py _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillActionFeedback.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_py _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillGoal.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_py _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillResult.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_py _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bruno/ros_ws/ws_personal/devel/.private/image_segmentation_skill_msgs/share/image_segmentation_skill_msgs/msg/ImageSegmentationSkillFeedback.msg" NAME_WE)
add_dependencies(image_segmentation_skill_msgs_generate_messages_py _image_segmentation_skill_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_segmentation_skill_msgs_genpy)
add_dependencies(image_segmentation_skill_msgs_genpy image_segmentation_skill_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_segmentation_skill_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_segmentation_skill_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_segmentation_skill_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_segmentation_skill_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_segmentation_skill_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_segmentation_skill_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(image_segmentation_skill_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
