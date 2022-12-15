#include<ros/ros.h>
#include <std_srvs/SetBool.h>
#include <iostream>

int main(int argc,char** argv)
{
  ros::init(argc,argv,"spin_command_client");
  ros::NodeHandle node;
  //ros::service::waitForService("/spin_command");
  ros::ServiceClient spin_command_client=
      node.serviceClient<std_srvs::SetBool>("/spin_command");

  std_srvs::SetBool srv;
  srv.request.data = true;
  std::cout<<(int)srv.request.data<<std::endl;
  ROS_INFO("call service to show command[command:%f]",
           srv.request.data);
  spin_command_client.call(srv);
  ROS_INFO("show command result: %s",srv.response.success);
  return 0;
}
