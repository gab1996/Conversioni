;; Auto-generated. Do not edit!


(when (boundp 'bulletsim_msgs::Initialization)
  (if (not (find-package "BULLETSIM_MSGS"))
    (make-package "BULLETSIM_MSGS"))
  (shadow 'Initialization (find-package "BULLETSIM_MSGS")))
(unless (find-package "BULLETSIM_MSGS::INITIALIZATION")
  (make-package "BULLETSIM_MSGS::INITIALIZATION"))
(unless (find-package "BULLETSIM_MSGS::INITIALIZATIONREQUEST")
  (make-package "BULLETSIM_MSGS::INITIALIZATIONREQUEST"))
(unless (find-package "BULLETSIM_MSGS::INITIALIZATIONRESPONSE")
  (make-package "BULLETSIM_MSGS::INITIALIZATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass bulletsim_msgs::InitializationRequest
  :super ros::object
  :slots (_cloud ))

(defmethod bulletsim_msgs::InitializationRequest
  (:init
   (&key
    ((:cloud __cloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _cloud __cloud)
   self)
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _cloud
    (send _cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _cloud
       (send _cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;;
   self)
  )

(defclass bulletsim_msgs::InitializationResponse
  :super ros::object
  :slots (_objectInit ))

(defmethod bulletsim_msgs::InitializationResponse
  (:init
   (&key
    ((:objectInit __objectInit) (instance bulletsim_msgs::ObjectInit :init))
    )
   (send-super :init)
   (setq _objectInit __objectInit)
   self)
  (:objectInit
   (&rest __objectInit)
   (if (keywordp (car __objectInit))
       (send* _objectInit __objectInit)
     (progn
       (if __objectInit (setq _objectInit (car __objectInit)))
       _objectInit)))
  (:serialization-length
   ()
   (+
    ;; bulletsim_msgs/ObjectInit _objectInit
    (send _objectInit :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bulletsim_msgs/ObjectInit _objectInit
       (send _objectInit :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bulletsim_msgs/ObjectInit _objectInit
     (send _objectInit :deserialize buf ptr-) (incf ptr- (send _objectInit :serialization-length))
   ;;
   self)
  )

(defclass bulletsim_msgs::Initialization
  :super ros::object
  :slots ())

(setf (get bulletsim_msgs::Initialization :md5sum-) "ce0a7e8348fab2f5858b6d6d77cf8ff2")
(setf (get bulletsim_msgs::Initialization :datatype-) "bulletsim_msgs/Initialization")
(setf (get bulletsim_msgs::Initialization :request) bulletsim_msgs::InitializationRequest)
(setf (get bulletsim_msgs::Initialization :response) bulletsim_msgs::InitializationResponse)

(defmethod bulletsim_msgs::InitializationRequest
  (:response () (instance bulletsim_msgs::InitializationResponse :init)))

(setf (get bulletsim_msgs::InitializationRequest :md5sum-) "ce0a7e8348fab2f5858b6d6d77cf8ff2")
(setf (get bulletsim_msgs::InitializationRequest :datatype-) "bulletsim_msgs/InitializationRequest")
(setf (get bulletsim_msgs::InitializationRequest :definition-)
      "sensor_msgs/PointCloud2 cloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
ObjectInit objectInit

================================================================================
MSG: bulletsim_msgs/ObjectInit
string type
Rope rope
Box box
geometry_msgs/PolygonStamped towel_corners

================================================================================
MSG: bulletsim_msgs/Rope
Header header
geometry_msgs/Point[] nodes
float32 radius
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: bulletsim_msgs/Box
geometry_msgs/Point center
geometry_msgs/Point extents
float32 angle

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
")

(setf (get bulletsim_msgs::InitializationResponse :md5sum-) "ce0a7e8348fab2f5858b6d6d77cf8ff2")
(setf (get bulletsim_msgs::InitializationResponse :datatype-) "bulletsim_msgs/InitializationResponse")
(setf (get bulletsim_msgs::InitializationResponse :definition-)
      "sensor_msgs/PointCloud2 cloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
ObjectInit objectInit

================================================================================
MSG: bulletsim_msgs/ObjectInit
string type
Rope rope
Box box
geometry_msgs/PolygonStamped towel_corners

================================================================================
MSG: bulletsim_msgs/Rope
Header header
geometry_msgs/Point[] nodes
float32 radius
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: bulletsim_msgs/Box
geometry_msgs/Point center
geometry_msgs/Point extents
float32 angle

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
")



(provide :bulletsim_msgs/Initialization "ce0a7e8348fab2f5858b6d6d77cf8ff2")


