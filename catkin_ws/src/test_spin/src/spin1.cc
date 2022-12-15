#include <ros/ros.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Twist.h>
#include <std_srvs/SetBool.h>

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

bool commandCallback(std_srvs::SetBool::Request &req,
                    std_srvs::SetBool::Response &res)
{
    ROS_INFO("publish command [f]",req.data);
    res.success = true;
}

int main(int argc, char **argv)
{
    ros::init(argc,argv,"listener");
    ros::NodeHandle n;
    ros::Subscriber sub=n.subscribe("/turtle1/cmd_vel",1000,chatterCallback);
    ros::ServiceServer command_server =
            n.advertiseService("/spin_command",commandCallback);    
    print();
    ros::spin();  
    return 0;
}