;; Auto-generated. Do not edit!


(when (boundp 'bulletsim_msgs::Box)
  (if (not (find-package "BULLETSIM_MSGS"))
    (make-package "BULLETSIM_MSGS"))
  (shadow 'Box (find-package "BULLETSIM_MSGS")))
(unless (find-package "BULLETSIM_MSGS::BOX")
  (make-package "BULLETSIM_MSGS::BOX"))

(in-package "ROS")
;;//! \htmlinclude Box.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bulletsim_msgs::Box
  :super ros::object
  :slots (_center _extents _angle ))

(defmethod bulletsim_msgs::Box
  (:init
   (&key
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:extents __extents) (instance geometry_msgs::Point :init))
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _center __center)
   (setq _extents __extents)
   (setq _angle (float __angle))
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:extents
   (&rest __extents)
   (if (keywordp (car __extents))
       (send* _extents __extents)
     (progn
       (if __extents (setq _extents (car __extents)))
       _extents)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; geometry_msgs/Point _extents
    (send _extents :serialization-length)
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; geometry_msgs/Point _extents
       (send _extents :serialize s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Point _extents
     (send _extents :deserialize buf ptr-) (incf ptr- (send _extents :serialization-length))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bulletsim_msgs::Box :md5sum-) "70da4b80a6a20bf735552f4c1a288c34")
(setf (get bulletsim_msgs::Box :datatype-) "bulletsim_msgs/Box")
(setf (get bulletsim_msgs::Box :definition-)
      "geometry_msgs/Point center
geometry_msgs/Point extents
float32 angle

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :bulletsim_msgs/Box "70da4b80a6a20bf735552f4c1a288c34")


