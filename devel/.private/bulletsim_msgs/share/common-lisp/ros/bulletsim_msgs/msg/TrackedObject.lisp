; Auto-generated. Do not edit!


(cl:in-package bulletsim_msgs-msg)


;//! \htmlinclude TrackedObject.msg.html

(cl:defclass <TrackedObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
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
   (mesh
    :reader mesh
    :initarg :mesh
    :type bulletsim_msgs-msg:Mesh
    :initform (cl:make-instance 'bulletsim_msgs-msg:Mesh)))
)

(cl:defclass TrackedObject (<TrackedObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackedObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackedObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bulletsim_msgs-msg:<TrackedObject> is deprecated: use bulletsim_msgs-msg:TrackedObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:header-val is deprecated.  Use bulletsim_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TrackedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:type-val is deprecated.  Use bulletsim_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'rope-val :lambda-list '(m))
(cl:defmethod rope-val ((m <TrackedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:rope-val is deprecated.  Use bulletsim_msgs-msg:rope instead.")
  (rope m))

(cl:ensure-generic-function 'box-val :lambda-list '(m))
(cl:defmethod box-val ((m <TrackedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:box-val is deprecated.  Use bulletsim_msgs-msg:box instead.")
  (box m))

(cl:ensure-generic-function 'mesh-val :lambda-list '(m))
(cl:defmethod mesh-val ((m <TrackedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:mesh-val is deprecated.  Use bulletsim_msgs-msg:mesh instead.")
  (mesh m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackedObject>) ostream)
  "Serializes a message object of type '<TrackedObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rope) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mesh) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackedObject>) istream)
  "Deserializes a message object of type '<TrackedObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mesh) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackedObject>)))
  "Returns string type for a message object of type '<TrackedObject>"
  "bulletsim_msgs/TrackedObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackedObject)))
  "Returns string type for a message object of type 'TrackedObject"
  "bulletsim_msgs/TrackedObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackedObject>)))
  "Returns md5sum for a message object of type '<TrackedObject>"
  "dd87acde2b5badaac900f58278c67de6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackedObject)))
  "Returns md5sum for a message object of type 'TrackedObject"
  "dd87acde2b5badaac900f58278c67de6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackedObject>)))
  "Returns full string definition for message of type '<TrackedObject>"
  (cl:format cl:nil "Header header~%string type~%Rope rope~%Box box~%Mesh mesh~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: bulletsim_msgs/Rope~%Header header~%geometry_msgs/Point[] nodes~%float32 radius~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: bulletsim_msgs/Box~%geometry_msgs/Point center~%geometry_msgs/Point extents~%float32 angle~%~%================================================================================~%MSG: bulletsim_msgs/Mesh~%geometry_msgs/Point[] vertices~%geometry_msgs/Point[] normals~%Face[] faces~%================================================================================~%MSG: bulletsim_msgs/Face~%uint32[] vertex_inds~%uint32[] normal_inds~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackedObject)))
  "Returns full string definition for message of type 'TrackedObject"
  (cl:format cl:nil "Header header~%string type~%Rope rope~%Box box~%Mesh mesh~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: bulletsim_msgs/Rope~%Header header~%geometry_msgs/Point[] nodes~%float32 radius~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: bulletsim_msgs/Box~%geometry_msgs/Point center~%geometry_msgs/Point extents~%float32 angle~%~%================================================================================~%MSG: bulletsim_msgs/Mesh~%geometry_msgs/Point[] vertices~%geometry_msgs/Point[] normals~%Face[] faces~%================================================================================~%MSG: bulletsim_msgs/Face~%uint32[] vertex_inds~%uint32[] normal_inds~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackedObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rope))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mesh))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackedObject>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackedObject
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':rope (rope msg))
    (cl:cons ':box (box msg))
    (cl:cons ':mesh (mesh msg))
))
