;; Auto-generated. Do not edit!


(when (boundp 'bulletsim_msgs::GetTable)
  (if (not (find-package "BULLETSIM_MSGS"))
    (make-package "BULLETSIM_MSGS"))
  (shadow 'GetTable (find-package "BULLETSIM_MSGS")))
(unless (find-package "BULLETSIM_MSGS::GETTABLE")
  (make-package "BULLETSIM_MSGS::GETTABLE"))
(unless (find-package "BULLETSIM_MSGS::GETTABLEREQUEST")
  (make-package "BULLETSIM_MSGS::GETTABLEREQUEST"))
(unless (find-package "BULLETSIM_MSGS::GETTABLERESPONSE")
  (make-package "BULLETSIM_MSGS::GETTABLERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bulletsim_msgs::GetTableRequest
  :super ros::object
  :slots ())

(defmethod bulletsim_msgs::GetTableRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass bulletsim_msgs::GetTableResponse
  :super ros::object
  :slots (_poly ))

(defmethod bulletsim_msgs::GetTableResponse
  (:init
   (&key
    ((:poly __poly) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _poly __poly)
   self)
  (:poly
   (&rest __poly)
   (if (keywordp (car __poly))
       (send* _poly __poly)
     (progn
       (if __poly (setq _poly (car __poly)))
       _poly)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PolygonStamped _poly
    (send _poly :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PolygonStamped _poly
       (send _poly :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PolygonStamped _poly
     (send _poly :deserialize buf ptr-) (incf ptr- (send _poly :serialization-length))
   ;;
   self)
  )

(defclass bulletsim_msgs::GetTable
  :super ros::object
  :slots ())

(setf (get bulletsim_msgs::GetTable :md5sum-) "afe2ee72497f9b4d6a6580170d3eac15")
(setf (get bulletsim_msgs::GetTable :datatype-) "bulletsim_msgs/GetTable")
(setf (get bulletsim_msgs::GetTable :request) bulletsim_msgs::GetTableRequest)
(setf (get bulletsim_msgs::GetTable :response) bulletsim_msgs::GetTableResponse)

(defmethod bulletsim_msgs::GetTableRequest
  (:response () (instance bulletsim_msgs::GetTableResponse :init)))

(setf (get bulletsim_msgs::GetTableRequest :md5sum-) "afe2ee72497f9b4d6a6580170d3eac15")
(setf (get bulletsim_msgs::GetTableRequest :datatype-) "bulletsim_msgs/GetTableRequest")
(setf (get bulletsim_msgs::GetTableRequest :definition-)
      "---
geometry_msgs/PolygonStamped poly


================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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

(setf (get bulletsim_msgs::GetTableResponse :md5sum-) "afe2ee72497f9b4d6a6580170d3eac15")
(setf (get bulletsim_msgs::GetTableResponse :datatype-) "bulletsim_msgs/GetTableResponse")
(setf (get bulletsim_msgs::GetTableResponse :definition-)
      "---
geometry_msgs/PolygonStamped poly


================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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



(provide :bulletsim_msgs/GetTable "afe2ee72497f9b4d6a6580170d3eac15")


