#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char **argv)
{

  ros::init(argc,argv,"velocity_publisher");

  ros::NodeHandle n;

  ros::Publisher turtle_vel_pub=
      n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",1000);

  // 频率10HZ
  ros::Rate loop_rate(20);

  int count=0;
  while(ros::ok())
  {
    geometry_msgs::Twist vel_msg;
    vel_msg.linear.x=0.5;
    vel_msg.angular.z=0.2;

    // 发送频率10HZ，消息池最大容量1000
    turtle_vel_pub.publish(vel_msg);
    ROS_INFO("publish velocity command [%0.2f m/s, %0.2f rad/s]",
             vel_msg.linear.x,vel_msg.angular.z);

    loop_rate.sleep();
  }
}
