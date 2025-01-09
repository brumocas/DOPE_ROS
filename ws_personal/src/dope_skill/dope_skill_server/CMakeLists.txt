cmake_minimum_required(VERSION 3.0.2)
project(dope_skill_server)

find_package(catkin REQUIRED COMPONENTS
  actionlib
  rospy
  roscpp
  dope_skill_msgs
  
)

catkin_python_setup()

catkin_package(
 CATKIN_DEPENDS rospy actionlib dope_skill_msgs 
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

catkin_install_python(
  PROGRAMS scripts/dope_skill.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
  DIRECTORY launch 
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)

if (CATKIN_ENABLE_TESTING)
  find_package(rostest REQUIRED)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage")
  add_rostest(test/unit_test.test)
  add_rostest(test/integration_test.test)
endif()