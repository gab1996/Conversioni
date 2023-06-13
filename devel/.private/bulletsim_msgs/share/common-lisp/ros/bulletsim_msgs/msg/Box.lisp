; Auto-generated. Do not edit!


(cl:in-package bulletsim_msgs-msg)


;//! \htmlinclude Box.msg.html

(cl:defclass <Box> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (extents
    :reader extents
    :initarg :extents
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass Box (<Box>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Box>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Box)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bulletsim_msgs-msg:<Box> is deprecated: use bulletsim_msgs-msg:Box instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <Box>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:center-val is deprecated.  Use bulletsim_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'extents-val :lambda-list '(m))
(cl:defmethod extents-val ((m <Box>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:extents-val is deprecated.  Use bulletsim_msgs-msg:extents instead.")
  (extents m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <Box>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:angle-val is deprecated.  Use bulletsim_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Box>) ostream)
  "Serializes a message object of type '<Box>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extents) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Box>) istream)
  "Deserializes a message object of type '<Box>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extents) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Box>)))
  "Returns string type for a message object of type '<Box>"
  "bulletsim_msgs/Box")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Box)))
  "Returns string type for a message object of type 'Box"
  "bulletsim_msgs/Box")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Box>)))
  "Returns md5sum for a message object of type '<Box>"
  "70da4b80a6a20bf735552f4c1a288c34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Box)))
  "Returns md5sum for a message object of type 'Box"
  "70da4b80a6a20bf735552f4c1a288c34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Box>)))
  "Returns full string definition for message of type '<Box>"
  (cl:format cl:nil "geometry_msgs/Point center~%geometry_msgs/Point extents~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Box)))
  "Returns full string definition for message of type 'Box"
  (cl:format cl:nil "geometry_msgs/Point center~%geometry_msgs/Point extents~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Box>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extents))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Box>))
  "Converts a ROS message object to a list"
  (cl:list 'Box
    (cl:cons ':center (center msg))
    (cl:cons ':extents (extents msg))
    (cl:cons ':angle (angle msg))
))
