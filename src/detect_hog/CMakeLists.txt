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
  RobotCamGlobalPos.msg
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


add_executable(${PROJECT_NAME}_left src/detect_left.cpp)

target_link_libraries(${PROJECT_NAME}_left
  ${catkin_LIBRARIES}
  ${OpenCV_LIBS}
)

add_executable(${PROJECT_NAME}_back src/detect_back.cpp)

target_link_libraries(${PROJECT_NAME}_back
  ${catkin_LIBRARIES}
  ${OpenCV_LIBS}
)

add_executable(${PROJECT_NAME}_right src/detect_right.cpp)

target_link_libraries(${PROJECT_NAME}_right
  ${catkin_LIBRARIES}
  ${OpenCV_LIBS}
)

add_executable(${PROJECT_NAME}_globalPos src/detect_global.cpp)

target_link_libraries(${PROJECT_NAME}_globalPos
  ${catkin_LIBRARIES}
  ${OpenCV_LIBS}
)

add_executable(${PROJECT_NAME}_readGloalPos src/read_globalPos.cpp)

target_link_libraries(${PROJECT_NAME}_readGloalPos
  ${catkin_LIBRARIES}
  ${OpenCV_LIBS}
)

