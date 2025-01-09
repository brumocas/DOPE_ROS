cmake_minimum_required(VERSION 3.0.2)
project(image_segmentation_skill_msgs)

find_package(catkin REQUIRED COMPONENTS
    actionlib_msgs
    message_generation
    std_msgs
    sensor_msgs
)

add_message_files(
    FILES
    MaskDefinition.msg
)

add_action_files(
    FILES
    ImageSegmentationSkill.action
)

generate_messages(
        DEPENDENCIES
        actionlib_msgs
        std_msgs
        sensor_msgs
)

catkin_package(
CATKIN_DEPENDS actionlib_msgs std_msgs  sensor_msgs
)

include_directories(
        ${catkin_INCLUDE_DIRS}
)


