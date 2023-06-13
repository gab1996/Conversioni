; Auto-generated. Do not edit!


(cl:in-package bulletsim_msgs-msg)


;//! \htmlinclude ObjectInit.msg.html

(cl:defclass <ObjectInit> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (rope
    :reader rope
    :initarg :rope
    :type bulletsim_msgs-msg:Rope
    :initform (cl:make-instance 'bulletsim_msgs-msg:Rope))
   (box
    :reader box
    :initarg :box
    :type bulletsim_msgs-msg:Box
    :initform (cl:make-instance 'bulletsim_msgs-msg:Box))
   (towel_corners
    :reader towel_corners
    :initarg :towel_corners
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass ObjectInit (<ObjectInit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectInit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectInit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bulletsim_msgs-msg:<ObjectInit> is deprecated: use bulletsim_msgs-msg:ObjectInit instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ObjectInit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:type-val is deprecated.  Use bulletsim_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'rope-val :lambda-list '(m))
(cl:defmethod rope-val ((m <ObjectInit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:rope-val is deprecated.  Use bulletsim_msgs-msg:rope instead.")
  (rope m))

(cl:ensure-generic-function 'box-val :lambda-list '(m))
(cl:defmethod box-val ((m <ObjectInit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:box-val is deprecated.  Use bulletsim_msgs-msg:box instead.")
  (box m))

(cl:ensure-generic-function 'towel_corners-val :lambda-list '(m))
(cl:defmethod towel_corners-val ((m <ObjectInit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:towel_corners-val is deprecated.  Use bulletsim_msgs-msg:towel_corners instead.")
  (towel_corners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectInit>) ostream)
  "Serializes a message object of type '<ObjectInit>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rope) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'towel_corners) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectInit>) istream)
  "Deserializes a message object of type '<ObjectInit>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rope) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'towel_corners) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectInit>)))
  "Returns string type for a message object of type '<ObjectInit>"
  "bulletsim_msgs/ObjectInit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectInit)))
  "Returns string type for a message object of type 'ObjectInit"
  "bulletsim_msgs/ObjectInit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectInit>)))
  "Returns md5sum for a message object of type '<ObjectInit>"
  "6385cb06dcc1ad81473bbced10d4b931")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectInit)))
  "Returns md5sum for a message object of type 'ObjectInit"
  "6385cb06dcc1ad81473bbced10d4b931")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectInit>)))
  "Returns full string definition for message of type '<ObjectInit>"
  (cl:format cl:nil "string type~%Rope rope~%Box box~%geometry_msgs/PolygonStamped towel_corners~%~%================================================================================~%MSG: bulletsim_msgs/Rope~%Header header~%geometry_msgs/Point[] nodes~%float32 radius~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: bulletsim_msgs/Box~%geometry_msgs/Point center~%geometry_msgs/Point extents~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectInit)))
  "Returns full string definition for message of type 'ObjectInit"
  (cl:format cl:nil "string type~%Rope rope~%Box box~%geometry_msgs/PolygonStamped towel_corners~%~%================================================================================~%MSG: bulletsim_msgs/Rope~%Header header~%geometry_msgs/Point[] nodes~%float32 radius~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: bulletsim_msgs/Box~%geometry_msgs/Point center~%geometry_msgs/Point extents~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectInit>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rope))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'towel_corners))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectInit>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectInit
    (cl:cons ':type (type msg))
    (cl:cons ':rope (rope msg))
    (cl:cons ':box (box msg))
    (cl:cons ':towel_corners (towel_corners msg))
))
