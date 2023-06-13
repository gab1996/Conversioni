;; Auto-generated. Do not edit!


(when (boundp 'bulletsim_msgs::TrackedObject)
  (if (not (find-package "BULLETSIM_MSGS"))
    (make-package "BULLETSIM_MSGS"))
  (shadow 'TrackedObject (find-package "BULLETSIM_MSGS")))
(unless (find-package "BULLETSIM_MSGS::TRACKEDOBJECT")
  (make-package "BULLETSIM_MSGS::TRACKEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude TrackedObject.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bulletsim_msgs::TrackedObject
  :super ros::object
  :slots (_header _type _rope _box _mesh ))

(defmethod bulletsim_msgs::TrackedObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:rope __rope) (instance bulletsim_msgs::Rope :init))
    ((:box __box) (instance bulletsim_msgs::Box :init))
    ((:mesh __mesh) (instance bulletsim_msgs::Mesh :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _rope __rope)
   (setq _box __box)
   (setq _mesh __mesh)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
  (:mesh
   (&rest __mesh)
   (if (keywordp (car __mesh))
       (send* _mesh __mesh)
     (progn
       (if __mesh (setq _mesh (car __mesh)))
       _mesh)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; bulletsim_msgs/Rope _rope
    (send _rope :serialization-length)
    ;; bulletsim_msgs/Box _box
    (send _box :serialization-length)
    ;; bulletsim_msgs/Mesh _mesh
    (send _mesh :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; bulletsim_msgs/Rope _rope
       (send _rope :serialize s)
     ;; bulletsim_msgs/Box _box
       (send _box :serialize s)
     ;; bulletsim_msgs/Mesh _mesh
       (send _mesh :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bulletsim_msgs/Rope _rope
     (send _rope :deserialize buf ptr-) (incf ptr- (send _rope :serialization-length))
   ;; bulletsim_msgs/Box _box
     (send _box :deserialize buf ptr-) (incf ptr- (send _box :serialization-length))
   ;; bulletsim_msgs/Mesh _mesh
     (send _mesh :deserialize buf ptr-) (incf ptr- (send _mesh :serialization-length))
   ;;
   self)
  )

(setf (get bulletsim_msgs::TrackedObject :md5sum-) "dd87acde2b5badaac900f58278c67de6")
(setf (get bulletsim_msgs::TrackedObject :datatype-) "bulletsim_msgs/TrackedObject")
(setf (get bulletsim_msgs::TrackedObject :definition-)
      "Header header
string type
Rope rope
Box box
Mesh mesh
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
MSG: bulletsim_msgs/Rope
Header header
geometry_msgs/Point[] nodes
float32 radius
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
MSG: bulletsim_msgs/Mesh
geometry_msgs/Point[] vertices
geometry_msgs/Point[] normals
Face[] faces
================================================================================
MSG: bulletsim_msgs/Face
uint32[] vertex_inds
uint32[] normal_inds
")



(provide :bulletsim_msgs/TrackedObject "dd87acde2b5badaac900f58278c67de6")


