; Auto-generated. Do not edit!


(cl:in-package bulletsim_msgs-msg)


;//! \htmlinclude Mesh.msg.html

(cl:defclass <Mesh> (roslisp-msg-protocol:ros-message)
  ((vertices
    :reader vertices
    :initarg :vertices
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (normals
    :reader normals
    :initarg :normals
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (faces
    :reader faces
    :initarg :faces
    :type (cl:vector bulletsim_msgs-msg:Face)
   :initform (cl:make-array 0 :element-type 'bulletsim_msgs-msg:Face :initial-element (cl:make-instance 'bulletsim_msgs-msg:Face))))
)

(cl:defclass Mesh (<Mesh>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mesh>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mesh)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bulletsim_msgs-msg:<Mesh> is deprecated: use bulletsim_msgs-msg:Mesh instead.")))

(cl:ensure-generic-function 'vertices-val :lambda-list '(m))
(cl:defmethod vertices-val ((m <Mesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:vertices-val is deprecated.  Use bulletsim_msgs-msg:vertices instead.")
  (vertices m))

(cl:ensure-generic-function 'normals-val :lambda-list '(m))
(cl:defmethod normals-val ((m <Mesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:normals-val is deprecated.  Use bulletsim_msgs-msg:normals instead.")
  (normals m))

(cl:ensure-generic-function 'faces-val :lambda-list '(m))
(cl:defmethod faces-val ((m <Mesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-msg:faces-val is deprecated.  Use bulletsim_msgs-msg:faces instead.")
  (faces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mesh>) ostream)
  "Serializes a message object of type '<Mesh>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vertices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vertices))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'normals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'normals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'faces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'faces))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mesh>) istream)
  "Deserializes a message object of type '<Mesh>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vertices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vertices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'normals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'normals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'faces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'faces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bulletsim_msgs-msg:Face))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mesh>)))
  "Returns string type for a message object of type '<Mesh>"
  "bulletsim_msgs/Mesh")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mesh)))
  "Returns string type for a message object of type 'Mesh"
  "bulletsim_msgs/Mesh")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mesh>)))
  "Returns md5sum for a message object of type '<Mesh>"
  "830dcdd998fe31e368add143b5ab2580")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mesh)))
  "Returns md5sum for a message object of type 'Mesh"
  "830dcdd998fe31e368add143b5ab2580")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mesh>)))
  "Returns full string definition for message of type '<Mesh>"
  (cl:format cl:nil "geometry_msgs/Point[] vertices~%geometry_msgs/Point[] normals~%Face[] faces~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: bulletsim_msgs/Face~%uint32[] vertex_inds~%uint32[] normal_inds~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mesh)))
  "Returns full string definition for message of type 'Mesh"
  (cl:format cl:nil "geometry_msgs/Point[] vertices~%geometry_msgs/Point[] normals~%Face[] faces~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: bulletsim_msgs/Face~%uint32[] vertex_inds~%uint32[] normal_inds~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mesh>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vertices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'normals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'faces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mesh>))
  "Converts a ROS message object to a list"
  (cl:list 'Mesh
    (cl:cons ':vertices (vertices msg))
    (cl:cons ':normals (normals msg))
    (cl:cons ':faces (faces msg))
))
