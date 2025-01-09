cmake_minimum_required(VERSION 3.0.2)
project(image_segmentation_skill_server)

set(Detection_INCLUDE_DIR /home/artur/_ws/object_segmentation_ws/src/image_segmentation/image_segmentation_skill_server/include)
# Set the path to the package's source directory as a CMake variable

find_package(catkin REQUIRED COMPONENTS roslaunch)
roslaunch_add_file_check(launch)


find_package(catkin REQUIRED COMPONENTS
        actionlib
        message_generation
        rospy
        rviz_visual_tools
        tf
        pcl_conversions
        pcl_ros
        image_segmentation_skill_msgs
        sensor_msgs
)

#catkin_package(
##        INCLUDE_DIRS
##        include
##        LIBRARIES
##        ${PROJECT_NAME}
#)

include_directories(
        include
        ${catkin_INCLUDE_DIRS}
        ${Detection_INCLUDE_DIR}
)

catkin_python_setup()

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

