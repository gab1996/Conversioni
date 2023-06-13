;; Auto-generated. Do not edit!


(when (boundp 'bulletsim_msgs::Face)
  (if (not (find-package "BULLETSIM_MSGS"))
    (make-package "BULLETSIM_MSGS"))
  (shadow 'Face (find-package "BULLETSIM_MSGS")))
(unless (find-package "BULLETSIM_MSGS::FACE")
  (make-package "BULLETSIM_MSGS::FACE"))

(in-package "ROS")
;;//! \htmlinclude Face.msg.html


(defclass bulletsim_msgs::Face
  :super ros::object
  :slots (_vertex_inds _normal_inds ))

(defmethod bulletsim_msgs::Face
  (:init
   (&key
    ((:vertex_inds __vertex_inds) (make-array 0 :initial-element 0 :element-type :integer))
    ((:normal_inds __normal_inds) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _vertex_inds __vertex_inds)
   (setq _normal_inds __normal_inds)
   self)
  (:vertex_inds
   (&optional __vertex_inds)
   (if __vertex_inds (setq _vertex_inds __vertex_inds)) _vertex_inds)
  (:normal_inds
   (&optional __normal_inds)
   (if __normal_inds (setq _normal_inds __normal_inds)) _normal_inds)
  (:serialization-length
   ()
   (+
    ;; uint32[] _vertex_inds
    (* 4    (length _vertex_inds)) 4
    ;; uint32[] _normal_inds
    (* 4    (length _normal_inds)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _vertex_inds
     (write-long (length _vertex_inds) s)
     (dotimes (i (length _vertex_inds))
       (write-long (elt _vertex_inds i) s)
       )
     ;; uint32[] _normal_inds
     (write-long (length _normal_inds) s)
     (dotimes (i (length _normal_inds))
       (write-long (elt _normal_inds i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _vertex_inds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertex_inds (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _vertex_inds i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _normal_inds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _normal_inds (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _normal_inds i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get bulletsim_msgs::Face :md5sum-) "5aceb6eb38fe514b1014b9171710143e")
(setf (get bulletsim_msgs::Face :datatype-) "bulletsim_msgs/Face")
(setf (get bulletsim_msgs::Face :definition-)
      "uint32[] vertex_inds
uint32[] normal_inds
")



(provide :bulletsim_msgs/Face "5aceb6eb38fe514b1014b9171710143e")


