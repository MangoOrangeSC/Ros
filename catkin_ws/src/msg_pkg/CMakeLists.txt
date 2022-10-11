cmake_minimum_required(VERSION 3.0.2)
project(my_msgs4)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs 
)

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  gpsData.msg
 )


## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs  #Person.msg中的string与uint8在此文件定义
 )

catkin_package(
CATKIN_DEPENDS  message_runtime #message_generation
#  DEPENDS system_lib
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)