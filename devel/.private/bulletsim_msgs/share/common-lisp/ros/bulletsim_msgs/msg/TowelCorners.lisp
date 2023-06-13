; Auto-generated. Do not edit!


(cl:in-package bulletsim_msgs-msg)


;//! \htmlinclude TowelCorners.msg.html

(cl:defclass <TowelCorners> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (corners
    :reader corners
    :initarg :corners
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass TowelCorners (<TowelCorners>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TowelCorners>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TowelCorners)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bulletsim_msgs-msg:<TowelCorners> is deprecated: use bulletsim_msgs-msg:TowelCorners instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TowelCorners>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:header-val is deprecated.  Use bulletsim_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <TowelCorners>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:corners-val is deprecated.  Use bulletsim_msgs-msg:corners instead.")
  (corners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TowelCorners>) ostream)
  "Serializes a message object of type '<TowelCorners>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corners))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TowelCorners>) istream)
  "Deserializes a message object of type '<TowelCorners>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corners) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'corners)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TowelCorners>)))
  "Returns string type for a message object of type '<TowelCorners>"
  "bulletsim_msgs/TowelCorners")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TowelCorners)))
  "Returns string type for a message object of type 'TowelCorners"
  "bulletsim_msgs/TowelCorners")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TowelCorners>)))
  "Returns md5sum for a message object of type '<TowelCorners>"
  "c15398c181f13f4b18a3bb1244b338fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TowelCorners)))
  "Returns md5sum for a message object of type 'TowelCorners"
  "c15398c181f13f4b18a3bb1244b338fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TowelCorners>)))
  "Returns full string definition for message of type '<TowelCorners>"
  (cl:format cl:nil "Header header~%geometry_msgs/Point[] corners~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TowelCorners)))
  "Returns full string definition for message of type 'TowelCorners"
  (cl:format cl:nil "Header header~%geometry_msgs/Point[] corners~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TowelCorners>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TowelCorners>))
  "Converts a ROS message object to a list"
  (cl:list 'TowelCorners
    (cl:cons ':header (header msg))
    (cl:cons ':corners (corners msg))
))
