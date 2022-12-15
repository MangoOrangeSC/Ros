#include <ros/ros.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Twist.h>

using namespace std;

void print()
{
    cout<<"in function" <<endl;
}

void chatterCallback(geometry_msgs::Twist vel_msg)
{
    ROS_INFO("publish velocity command [%0.2f m/s, %0.2f rad/s]",
             vel_msg.linear.x,vel_msg.angular.z);
}

int main(int argc, char **argv)
{
    ros::init(argc,argv,"listener");
    ros::NodeHandle n;
    ros::Subscriber sub=n.subscribe("/turtle1/cmd_vel",1000,chatterCallback);
    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        print();
        ros::spinOnce();
        loop_rate.sleep();
    }
    
    return 0;
}