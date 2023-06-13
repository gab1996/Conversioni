; Auto-generated. Do not edit!


(cl:in-package bulletsim_msgs-srv)


;//! \htmlinclude Initialization-request.msg.html

(cl:defclass <Initialization-request> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass Initialization-request (<Initialization-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Initialization-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Initialization-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bulletsim_msgs-srv:<Initialization-request> is deprecated: use bulletsim_msgs-srv:Initialization-request instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <Initialization-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-srv:cloud-val is deprecated.  Use bulletsim_msgs-srv:cloud instead.")
  (cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Initialization-request>) ostream)
  "Serializes a message object of type '<Initialization-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Initialization-request>) istream)
  "Deserializes a message object of type '<Initialization-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Initialization-request>)))
  "Returns string type for a service object of type '<Initialization-request>"
  "bulletsim_msgs/InitializationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Initialization-request)))
  "Returns string type for a service object of type 'Initialization-request"
  "bulletsim_msgs/InitializationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Initialization-request>)))
  "Returns md5sum for a message object of type '<Initialization-request>"
  "ce0a7e8348fab2f5858b6d6d77cf8ff2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Initialization-request)))
  "Returns md5sum for a message object of type 'Initialization-request"
  "ce0a7e8348fab2f5858b6d6d77cf8ff2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Initialization-request>)))
  "Returns full string definition for message of type '<Initialization-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Initialization-request)))
  "Returns full string definition for message of type 'Initialization-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Initialization-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Initialization-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Initialization-request
    (cl:cons ':cloud (cloud msg))
))
;//! \htmlinclude Initialization-response.msg.html

(cl:defclass <Initialization-response> (roslisp-msg-protocol:ros-message)
  ((objectInit
    :reader objectInit
    :initarg :objectInit
    :type bulletsim_msgs-msg:ObjectInit
    :initform (cl:make-instance 'bulletsim_msgs-msg:ObjectInit)))
)

(cl:defclass Initialization-response (<Initialization-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Initialization-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Initialization-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bulletsim_msgs-srv:<Initialization-response> is deprecated: use bulletsim_msgs-srv:Initialization-response instead.")))

(cl:ensure-generic-function 'objectInit-val :lambda-list '(m))
(cl:defmethod objectInit-val ((m <Initialization-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-srv:objectInit-val is deprecated.  Use bulletsim_msgs-srv:objectInit instead.")
  (objectInit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Initialization-response>) ostream)
  "Serializes a message object of type '<Initialization-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'objectInit) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Initialization-response>) istream)
  "Deserializes a message object of type '<Initialization-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'objectInit) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Initialization-response>)))
  "Returns string type for a service object of type '<Initialization-response>"
  "bulletsim_msgs/InitializationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Initialization-response)))
  "Returns string type for a service object of type 'Initialization-response"
  "bulletsim_msgs/InitializationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Initialization-response>)))
  "Returns md5sum for a message object of type '<Initialization-response>"
  "ce0a7e8348fab2f5858b6d6d77cf8ff2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Initialization-response)))
  "Returns md5sum for a message object of type 'Initialization-response"
  "ce0a7e8348fab2f5858b6d6d77cf8ff2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Initialization-response>)))
  "Returns full string definition for message of type '<Initialization-response>"
  (cl:format cl:nil "ObjectInit objectInit~%~%================================================================================~%MSG: bulletsim_msgs/ObjectInit~%string type~%Rope rope~%Box box~%geometry_msgs/PolygonStamped towel_corners~%~%================================================================================~%MSG: bulletsim_msgs/Rope~%Header header~%geometry_msgs/Point[] nodes~%float32 radius~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: bulletsim_msgs/Box~%geometry_msgs/Point center~%geometry_msgs/Point extents~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Initialization-response)))
  "Returns full string definition for message of type 'Initialization-response"
  (cl:format cl:nil "ObjectInit objectInit~%~%================================================================================~%MSG: bulletsim_msgs/ObjectInit~%string type~%Rope rope~%Box box~%geometry_msgs/PolygonStamped towel_corners~%~%================================================================================~%MSG: bulletsim_msgs/Rope~%Header header~%geometry_msgs/Point[] nodes~%float32 radius~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: bulletsim_msgs/Box~%geometry_msgs/Point center~%geometry_msgs/Point extents~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Initialization-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'objectInit))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Initialization-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Initialization-response
    (cl:cons ':objectInit (objectInit msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Initialization)))
  'Initialization-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Initialization)))
  'Initialization-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Initialization)))
  "Returns string type for a service object of type '<Initialization>"
  "bulletsim_msgs/Initialization")