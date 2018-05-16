cmake_minimum_required(VERSION 2.8.3)
project(detect_hog)
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)
find_package(OpenCV REQUIRED)

add_message_files(
  FILES
  RobotCamPos.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
  ${detect_hog_SOURCE_DIR}/src/
)


add_executable(${PROJECT_NAME}_node src/detect.cpp)

target_link_libraries(${PROJECT_NAME}_node
  ${catkin_LIBRARIES}
  ${OpenCV_LIBS}
)

add_executable(${PROJECT_NAME}2_node src/detect2.cpp)

target_link_libraries(${PROJECT_NAME}2_node
  ${catkin_LIBRARIES}
  ${OpenCV_LIBS}
)

add_executable(${PROJECT_NAME}3_node src/detect3.cpp)

target_link_libraries(${PROJECT_NAME}3_node
  ${catkin_LIBRARIES}
  ${OpenCV_LIBS}
)
