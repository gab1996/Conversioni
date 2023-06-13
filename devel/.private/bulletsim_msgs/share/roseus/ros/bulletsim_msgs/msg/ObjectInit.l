;; Auto-generated. Do not edit!


(when (boundp 'bulletsim_msgs::ObjectInit)
  (if (not (find-package "BULLETSIM_MSGS"))
    (make-package "BULLETSIM_MSGS"))
  (shadow 'ObjectInit (find-package "BULLETSIM_MSGS")))
(unless (find-package "BULLETSIM_MSGS::OBJECTINIT")
  (make-package "BULLETSIM_MSGS::OBJECTINIT"))

(in-package "ROS")
;;//! \htmlinclude ObjectInit.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bulletsim_msgs::ObjectInit
  :super ros::object
  :slots (_type _rope _box _towel_corners ))

(defmethod bulletsim_msgs::ObjectInit
  (:init
   (&key
    ((:type __type) "")
    ((:rope __rope) (instance bulletsim_msgs::Rope :init))
    ((:box __box) (instance bulletsim_msgs::Box :init))
    ((:towel_corners __towel_corners) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _rope __rope)
   (setq _box __box)
   (setq _towel_corners __towel_corners)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:rope
   (&rest __rope)
   (if (keywordp (car __rope))
       (send* _rope __rope)
     (progn
       (if __rope (setq _rope (car __rope)))
       _rope)))
  (:box
   (&rest __box)
   (if (keywordp (car __box))
       (send* _box __box)
     (progn
       (if __box (setq _box (car __box)))
       _box)))
  (:towel_corners
   (&rest __towel_corners)
   (if (keywordp (car __towel_corners))
       (send* _towel_corners __towel_corners)
     (progn
       (if __towel_corners (setq _towel_corners (car __towel_corners)))
       _towel_corners)))
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; bulletsim_msgs/Rope _rope
    (send _rope :serialization-length)
    ;; bulletsim_msgs/Box _box
    (send _box :serialization-length)
    ;; geometry_msgs/PolygonStamped _towel_corners
    (send _towel_corners :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; bulletsim_msgs/Rope _rope
       (send _rope :serialize s)
     ;; bulletsim_msgs/Box _box
       (send _box :serialize s)
     ;; geometry_msgs/PolygonStamped _towel_corners
       (send _towel_corners :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bulletsim_msgs/Rope _rope
     (send _rope :deserialize buf ptr-) (incf ptr- (send _rope :serialization-length))
   ;; bulletsim_msgs/Box _box
     (send _box :deserialize buf ptr-) (incf ptr- (send _box :serialization-length))
   ;; geometry_msgs/PolygonStamped _towel_corners
     (send _towel_corners :deserialize buf ptr-) (incf ptr- (send _towel_corners :serialization-length))
   ;;
   self)
  )

(setf (get bulletsim_msgs::ObjectInit :md5sum-) "6385cb06dcc1ad81473bbced10d4b931")
(setf (get bulletsim_msgs::ObjectInit :datatype-) "bulletsim_msgs/ObjectInit")
(setf (get bulletsim_msgs::ObjectInit :definition-)
      "string type
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
float32 z
")



(provide :bulletsim_msgs/ObjectInit "6385cb06dcc1ad81473bbced10d4b931")


