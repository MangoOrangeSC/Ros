# msgs
http://docs.ros.org/en/api/geometry_msgs/html/index-msg.html
## geometry_msgs

### geometry_msgs/Point Message
File: geometry_msgs/Point.msg

Raw Message Definition
#This contains the position of a point in free space
float64 x
float64 y
float64 z

Compact Message Definition
float64 x
float64 y
float64 z


### geometry_msgs/Point32 Message
File: geometry_msgs/Point32.msg
Raw Message Definition
#This contains the position of a point in free space(with 32 bits of precision).
#It is recommeded to use Point wherever possible instead of Point32.  
#
#This recommendation is to promote interoperability.  
#
#This message is designed to take up less space when sending
#lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
Compact Message Definition
float32 x
float32 y
float32 z


### geometry_msgs/PointStamped Message
File: geometry_msgs/PointStamped.msg
Raw Message Definition
#This represents a Point with reference coordinate frame and timestamp
Header header
Point point

Compact Message Definition
std_msgs/Header header
geometry_msgs/Point point


### geometry_msgs/Polygon Message
File: geometry_msgs/Polygon.msg
Raw Message Definition
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

Compact Message Definition
geometry_msgs/Point32[] points


### geometry_msgs/PolygonStamped Message
File: geometry_msgs/PolygonStamped.msg
Raw Message Definition
#This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

Compact Message Definition
std_msgs/Header header
geometry_msgs/Polygon polygon



### geometry_msgs/Pose Message
File: geometry_msgs/Pose.msg
Raw Message Definition
#A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

Compact Message Definition
geometry_msgs/Point position
geometry_msgs/Quaternion orientation


### geometry_msgs/Pose2D Message
File: geometry_msgs/Pose2D.msg
Raw Message Definition
#Deprecated
#Please use the full 3D pose.

#In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

#If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


#This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

Compact Message Definition
float64 x
float64 y
float64 theta


### geometry_msgs/PoseArray Message
File: geometry_msgs/PoseArray.msg
Raw Message Definition
#An array of poses with a header for global reference.

Header header

Pose[] poses

Compact Message Definition
std_msgs/Header header
geometry_msgs/Pose[] poses


### geometry_msgs/PoseStamped Message
File: geometry_msgs/PoseStamped.msg
Raw Message Definition
#A Pose with reference coordinate frame and timestamp
Header header
Pose pose

Compact Message Definition
std_msgs/Header header
geometry_msgs/Pose pose


### geometry_msgs/PoseWithCovariance Message
File: geometry_msgs/PoseWithCovariance.msg
Raw Message Definition
#This represents a pose in free space with uncertainty.

Pose pose

#Row-major representation of the 6x6 covariance matrix
#The orientation parameters use a fixed-axis representation.
#In order, the parameters are:
#(x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

Compact Message Definition
geometry_msgs/Pose pose
float64[36] covariance


### geometry_msgs/PoseWithCovarianceStamped Message
File: geometry_msgs/PoseWithCovarianceStamped.msg
Raw Message Definition
#This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

Compact Message Definition
std_msgs/Header header
geometry_msgs/PoseWithCovariance pose



### geometry_msgs/Quaternion Message
File: geometry_msgs/Quaternion.msg
Raw Message Definition
#This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

Compact Message Definition
float64 x
float64 y
float64 z
float64 w


### geometry_msgs/QuaternionStamped Message
File: geometry_msgs/QuaternionStamped.msg
Raw Message Definition
#This represents an orientation with reference coordinate frame and timestamp.

Header header
Quaternion quaternion

Compact Message Definition
std_msgs/Header header
geometry_msgs/Quaternion quaternion


### geometry_msgs/Transform Message
File: geometry_msgs/Transform.msg
Raw Message Definition
#This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

Compact Message Definition
geometry_msgs/Vector3 translation
geometry_msgs/Quaternion rotation


### geometry_msgs/TransformStamped Message
File: geometry_msgs/TransformStamped.msg
Raw Message Definition
#This expresses a transform from coordinate frame header.frame_id
#to the coordinate frame child_frame_id
#
#This message is mostly used by the 
#tf package. 
#See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

Compact Message Definition
std_msgs/Header header
string child_frame_id
geometry_msgs/Transform transform


### geometry_msgs/Twist Message
线速度与角速度
File: geometry_msgs/Twist.msg
Raw Message Definition
#This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

Compact Message Definition
geometry_msgs/Vector3 linear
geometry_msgs/Vector3 angular


### geometry_msgs/TwistStamped Message
File: geometry_msgs/TwistStamped.msg
Raw Message Definition
#A twist with reference coordinate frame and timestamp
Header header
Twist twist

Compact Message Definition
std_msgs/Header header
geometry_msgs/Twist twist


### geometry_msgs/TwistWithCovariance Message
File: geometry_msgs/TwistWithCovariance.msg
Raw Message Definition
#This expresses velocity in free space with uncertainty.

Twist twist

#Row-major representation of the 6x6 covariance matrix
#The orientation parameters use a fixed-axis representation.
#In order, the parameters are:
#(x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

Compact Message Definition
geometry_msgs/Twist twist
float64[36] covariance

### geometry_msgs/TwistWithCovarianceStamped Message
File: geometry_msgs/TwistWithCovarianceStamped.msg
Raw Message Definition
#This represents an estimated twist with reference coordinate frame and timestamp.
Header header
TwistWithCovariance twist

Compact Message Definition
std_msgs/Header header
geometry_msgs/TwistWithCovariance twist


### geometry_msgs/Vector3 Message
它只代表一个方向
File: geometry_msgs/Vector3.msg
Raw Message Definition
#This represents a vector in free space. 
#It is only meant to represent a direction. Therefore, it does not
#make sense to apply a translation to it (e.g., when applying a 
#generic rigid transformation to a Vector3, tf2 will only apply the
#rotation). If you want your data to be translatable too, use the
#geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
Compact Message Definition
float64 x
float64 y
float64 z


### geometry_msgs/Vector3Stamped Message
File: geometry_msgs/Vector3Stamped.msg
Raw Message Definition
#This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

Compact Message Definition
std_msgs/Header header
geometry_msgs/Vector3 vector


## navy_msgs
### Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses


### Odometry.msg
#This represents an estimate of a position and velocity in free space.  
#The pose in this message should be specified in the coordinate frame given by header.frame_id.
#The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

### OccupancyGrid.msg
#This represents a 2-D grid map, in which each cell represents the probability of
#occupancy.

Header header 

#MetaData for the map
MapMetaData info

#The map data, in row-major order, starting with (0,0).  Occupancy
#probabilities are in the range [0,100].  Unknown is -1.
int8[] data


### MapMetaData.msg
#This hold basic information about the characterists of the OccupancyGrid

#The time at which the map was loaded
time map_load_time
#The map resolution [m/cell]
float32 resolution
#Map width [cells]
uint32 width
#Map height [cells]
uint32 height
#The origin of the map [m, m, rad].  This is the real-world pose of the
#cell (0,0) in the map.
geometry_msgs/Pose origin

### GridCells.msg
#an array of cells in a 2D grid
Header header
float32 cell_width
float32 cell_height
geometry_msgs/Point[] cells


## std_msgs

### std_msgs/Header Message
File: std_msgs/Header.msg
Raw Message Definition
#Standard metadata for higher-level stamped data types.
#This is generally used to communicate timestamped data 
#in a particular coordinate frame.
#
#sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
#* stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
#* stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
#time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

Compact Message Definition
uint32 seq
time stamp
string frame_id

