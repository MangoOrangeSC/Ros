#include <ros/ros.h>
#include <ros/console.h>
#include <nav_msgs/Path.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf/transform_broadcaster.h>
#include <tf/tf.h>

main (int argc, char **argv)
{
    ros::init (argc, argv, "showpath");

    ros::NodeHandle ph;
    ros::Publisher path_pub = ph.advertise<nav_msgs::Path>("trajectory",1, true);

    ros::Time current_time, last_time;
    current_time = ros::Time::now();
    last_time = ros::Time::now();

    nav_msgs::Path path;
    //nav_msgs::Path path;
    path.header.stamp=current_time;
    path.header.frame_id="odom";


    double x = 0.0;
    double y = 0.0;


    ros::Rate loop_rate(1);
    while (ros::ok())
    {
        for(int i=0;i<10;i++)
        {

        
        //current_time = ros::Time::now();
        //compute odometry in a typical way given the velocities of the robot

        geometry_msgs::PoseStamped this_pose_stamped;
        this_pose_stamped.pose.position.x = i;
        this_pose_stamped.pose.position.y = i;

        //this_pose_stamped.header.stamp=current_time;
        this_pose_stamped.header.frame_id="odom";
        path.poses.push_back(this_pose_stamped);
        }

        path_pub.publish(path);
        ros::spinOnce();               // check for incoming messages

        //last_time = current_time;
        loop_rate.sleep();
    }

    return 0;
}
