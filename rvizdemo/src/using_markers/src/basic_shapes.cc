#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <nav_msgs/Path.h>
/*
visualization_msgs::Marker格式如下:
//各种标志物类型的定义，每一个的具体介绍和形状可以到这里查看：http://wiki.ros.org/rviz/DisplayTypes/Marker
uint8 ARROW=0//箭头
uint8 CUBE=1//立方体
uint8 SPHERE=2//球
uint8 CYLINDER=3//圆柱体
uint8 LINE_STRIP=4//线条（点的连线）
uint8 LINE_LIST=5//线条序列
uint8 CUBE_LIST=6//立方体序列
uint8 SPHERE_LIST=7//球序列
uint8 POINTS=8//点集
uint8 TEXT_VIEW_FACING=9//显示3D的文字
uint8 MESH_RESOURCE=10//网格？
uint8 TRIANGLE_LIST=11//三角形序列
//对标记的操作
uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3
 
Header header
string ns   //命名空间namespace，就是你理解的那样
int32 id    //与命名空间联合起来，形成唯一的id，这个唯一的id可以将各个标志物区分开来，使得程序可以对指定的标志物进行操作
int32 type  //类型
int32 action 	//操作，是添加还是修改还是删除
geometry_msgs/Pose pose       # Pose of the object
geometry_msgs/Vector3 scale   # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color      # Color [0.0-1.0]
duration lifetime             # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked             # If this marker should be frame-locked, i.e. retransformed into its frame every timestep
 
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points//这个是在序列、点集中才会用到，指明序列中每个点的位置
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors
 
# NOTE: only used for text markers
string text
 
# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials
*/ 
 int main( int argc, char** argv )
 {
   ros::init(argc, argv, "basic_shapes");
   ros::NodeHandle n;
   //ros::Rate r(1);

/*
   ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);
 
   uint32_t shape = visualization_msgs::Marker::CUBE;
 
   while (ros::ok())
   {
     visualization_msgs::Marker marker;
     
     marker.header.frame_id = "/my_frame";
     marker.header.stamp = ros::Time::now();
 
     marker.ns = "basic_shapes";
     marker.id = 0;
     
     marker.type = shape;
 
     marker.action = visualization_msgs::Marker::ADD;
 
     marker.pose.position.x = 0;
     marker.pose.position.y = 0;
     marker.pose.position.z = 0;
     marker.pose.orientation.x = 0.0;
     marker.pose.orientation.y = 0.0;
     marker.pose.orientation.z = 0.0;
     marker.pose.orientation.w = 1.0;
     
     marker.scale.x = 1.0;
     marker.scale.y = 1.0;
     marker.scale.z = 1.0;
     
     marker.color.r = 0.0f;
     marker.color.g = 1.0f;
     marker.color.b = 0.0f;
     marker.color.a = 1.0;
 
     marker.lifetime = ros::Duration();

     while (marker_pub.getNumSubscribers() < 1)
     {
       if (!ros::ok())
       {
         return 0;
       }
       ROS_WARN_ONCE("Please create a subscriber to the marker");
       sleep(1);
     }
     marker_pub.publish(marker);
*/

    ros::Publisher waypoints_pub_ = n.advertise<nav_msgs::Path>("trajectory", 1);
    nav_msgs::Path traj_points_;
    
while (n.ok())
{  
    traj_points_.poses.clear();
    traj_points_.header.frame_id = "/my_frame";
    traj_points_.header.stamp = ros::Time::now();
    for (int i = 0; i <10; i++)
    {
      geometry_msgs::PoseStamped pose_stamp;
      pose_stamp.header.frame_id = "/my_frame";
      pose_stamp.header.stamp = ros::Time::now();
      pose_stamp.pose.position.x = i;
      pose_stamp.pose.position.y = i+1;
      pose_stamp.pose.position.z = 0;
      traj_points_.poses.push_back(pose_stamp);
    }
    for (auto pose_stamp0:traj_points_.poses)
    {
      /* code */
      std::cout<<"x"<<pose_stamp0.pose.position.x
      <<"y"<<pose_stamp0.pose.position.y
      <<"z"<<pose_stamp0.pose.position.z
      <<"id"<<pose_stamp0.header
      <<std::endl;       
    }
    
    //发布轨迹
    waypoints_pub_.publish(traj_points_);


    //ros::spinOnce();

    //r.sleep();
  }
}