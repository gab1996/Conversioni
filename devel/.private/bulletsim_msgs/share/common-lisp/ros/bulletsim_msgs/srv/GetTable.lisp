; Auto-generated. Do not edit!


(cl:in-package bulletsim_msgs-srv)


;//! \htmlinclude GetTable-request.msg.html

(cl:defclass <GetTable-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTable-request (<GetTable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bulletsim_msgs-srv:<GetTable-request> is deprecated: use bulletsim_msgs-srv:GetTable-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTable-request>) ostream)
  "Serializes a message object of type '<GetTable-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTable-request>) istream)
  "Deserializes a message object of type '<GetTable-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTable-request>)))
  "Returns string type for a service object of type '<GetTable-request>"
  "bulletsim_msgs/GetTableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTable-request)))
  "Returns string type for a service object of type 'GetTable-request"
  "bulletsim_msgs/GetTableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTable-request>)))
  "Returns md5sum for a message object of type '<GetTable-request>"
  "afe2ee72497f9b4d6a6580170d3eac15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTable-request)))
  "Returns md5sum for a message object of type 'GetTable-request"
  "afe2ee72497f9b4d6a6580170d3eac15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTable-request>)))
  "Returns full string definition for message of type '<GetTable-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTable-request)))
  "Returns full string definition for message of type 'GetTable-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTable-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTable-request
))
;//! \htmlinclude GetTable-response.msg.html

(cl:defclass <GetTable-response> (roslisp-msg-protocol:ros-message)
  ((poly
    :reader poly
    :initarg :poly
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass GetTable-response (<GetTable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bulletsim_msgs-srv:<GetTable-response> is deprecated: use bulletsim_msgs-srv:GetTable-response instead.")))

(cl:ensure-generic-function 'poly-val :lambda-list '(m))
(cl:defmethod poly-val ((m <GetTable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bulletsim_msgs-srv:poly-val is deprecated.  Use bulletsim_msgs-srv:poly instead.")
  (poly m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTable-response>) ostream)
  "Serializes a message object of type '<GetTable-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poly) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTable-response>) istream)
  "Deserializes a message object of type '<GetTable-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poly) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTable-response>)))
  "Returns string type for a service object of type '<GetTable-response>"
  "bulletsim_msgs/GetTableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTable-response)))
  "Returns string type for a service object of type 'GetTable-response"
  "bulletsim_msgs/GetTableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTable-response>)))
  "Returns md5sum for a message object of type '<GetTable-response>"
  "afe2ee72497f9b4d6a6580170d3eac15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTable-response)))
  "Returns md5sum for a message object of type 'GetTable-response"
  "afe2ee72497f9b4d6a6580170d3eac15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTable-response>)))
  "Returns full string definition for message of type '<GetTable-response>"
  (cl:format cl:nil "geometry_msgs/PolygonStamped poly~%~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTable-response)))
  "Returns full string definition for message of type 'GetTable-response"
  (cl:format cl:nil "geometry_msgs/PolygonStamped poly~%~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTable-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poly))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTable-response
    (cl:cons ':poly (poly msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTable)))
  'GetTable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTable)))
  'GetTable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTable)))
  "Returns string type for a service object of type '<GetTable>"
  "bulletsim_msgs/GetTable")