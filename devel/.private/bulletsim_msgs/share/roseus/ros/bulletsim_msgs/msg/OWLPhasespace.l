;; Auto-generated. Do not edit!


(when (boundp 'bulletsim_msgs::OWLPhasespace)
  (if (not (find-package "BULLETSIM_MSGS"))
    (make-package "BULLETSIM_MSGS"))
  (shadow 'OWLPhasespace (find-package "BULLETSIM_MSGS")))
(unless (find-package "BULLETSIM_MSGS::OWLPHASESPACE")
  (make-package "BULLETSIM_MSGS::OWLPHASESPACE"))

(in-package "ROS")
;;//! \htmlinclude OWLPhasespace.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bulletsim_msgs::OWLPhasespace
  :super ros::object
  :slots (_header _markers ))

(defmethod bulletsim_msgs::OWLPhasespace
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:markers __markers) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _markers __markers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bulletsim_msgs/OWLMarker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bulletsim_msgs/OWLMarker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bulletsim_msgs/OWLMarker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance bulletsim_msgs::OWLMarker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get bulletsim_msgs::OWLPhasespace :md5sum-) "49a94742af886c9cc9b920374e73d647")
(setf (get bulletsim_msgs::OWLPhasespace :datatype-) "bulletsim_msgs/OWLPhasespace")
(setf (get bulletsim_msgs::OWLPhasespace :definition-)
      "#OWLPhasespace
Header header
OWLMarker[] markers
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
MSG: bulletsim_msgs/OWLMarker
#OWLMarker
int32 id
int32 frame
geometry_msgs/Point point
float32 cond
uint32 flag
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :bulletsim_msgs/OWLPhasespace "49a94742af886c9cc9b920374e73d647")


