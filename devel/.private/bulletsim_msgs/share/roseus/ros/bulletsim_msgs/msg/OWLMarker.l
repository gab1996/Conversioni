;; Auto-generated. Do not edit!


(when (boundp 'bulletsim_msgs::OWLMarker)
  (if (not (find-package "BULLETSIM_MSGS"))
    (make-package "BULLETSIM_MSGS"))
  (shadow 'OWLMarker (find-package "BULLETSIM_MSGS")))
(unless (find-package "BULLETSIM_MSGS::OWLMARKER")
  (make-package "BULLETSIM_MSGS::OWLMARKER"))

(in-package "ROS")
;;//! \htmlinclude OWLMarker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bulletsim_msgs::OWLMarker
  :super ros::object
  :slots (_id _frame _point _cond _flag ))

(defmethod bulletsim_msgs::OWLMarker
  (:init
   (&key
    ((:id __id) 0)
    ((:frame __frame) 0)
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:cond __cond) 0.0)
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _frame (round __frame))
   (setq _point __point)
   (setq _cond (float __cond))
   (setq _flag (round __flag))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:cond
   (&optional __cond)
   (if __cond (setq _cond __cond)) _cond)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _frame
    4
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; float32 _cond
    4
    ;; uint32 _flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _frame
       (write-long _frame s)
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; float32 _cond
       (sys::poke _cond (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _flag
       (write-long _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _frame
     (setq _frame (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float32 _cond
     (setq _cond (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _flag
     (setq _flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bulletsim_msgs::OWLMarker :md5sum-) "109bc2da4c65dd1a28bff573840d64e2")
(setf (get bulletsim_msgs::OWLMarker :datatype-) "bulletsim_msgs/OWLMarker")
(setf (get bulletsim_msgs::OWLMarker :definition-)
      "#OWLMarker
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



(provide :bulletsim_msgs/OWLMarker "109bc2da4c65dd1a28bff573840d64e2")


