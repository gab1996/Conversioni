;; Auto-generated. Do not edit!


(when (boundp 'bulletsim_msgs::Mesh)
  (if (not (find-package "BULLETSIM_MSGS"))
    (make-package "BULLETSIM_MSGS"))
  (shadow 'Mesh (find-package "BULLETSIM_MSGS")))
(unless (find-package "BULLETSIM_MSGS::MESH")
  (make-package "BULLETSIM_MSGS::MESH"))

(in-package "ROS")
;;//! \htmlinclude Mesh.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bulletsim_msgs::Mesh
  :super ros::object
  :slots (_vertices _normals _faces ))

(defmethod bulletsim_msgs::Mesh
  (:init
   (&key
    ((:vertices __vertices) ())
    ((:normals __normals) ())
    ((:faces __faces) ())
    )
   (send-super :init)
   (setq _vertices __vertices)
   (setq _normals __normals)
   (setq _faces __faces)
   self)
  (:vertices
   (&rest __vertices)
   (if (keywordp (car __vertices))
       (send* _vertices __vertices)
     (progn
       (if __vertices (setq _vertices (car __vertices)))
       _vertices)))
  (:normals
   (&rest __normals)
   (if (keywordp (car __normals))
       (send* _normals __normals)
     (progn
       (if __normals (setq _normals (car __normals)))
       _normals)))
  (:faces
   (&rest __faces)
   (if (keywordp (car __faces))
       (send* _faces __faces)
     (progn
       (if __faces (setq _faces (car __faces)))
       _faces)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _vertices
    (apply #'+ (send-all _vertices :serialization-length)) 4
    ;; geometry_msgs/Point[] _normals
    (apply #'+ (send-all _normals :serialization-length)) 4
    ;; bulletsim_msgs/Face[] _faces
    (apply #'+ (send-all _faces :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _vertices
     (write-long (length _vertices) s)
     (dolist (elem _vertices)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _normals
     (write-long (length _normals) s)
     (dolist (elem _normals)
       (send elem :serialize s)
       )
     ;; bulletsim_msgs/Face[] _faces
     (write-long (length _faces) s)
     (dolist (elem _faces)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _vertices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertices (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _vertices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _normals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _normals (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _normals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bulletsim_msgs/Face[] _faces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faces (let (r) (dotimes (i n) (push (instance bulletsim_msgs::Face :init) r)) r))
     (dolist (elem- _faces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get bulletsim_msgs::Mesh :md5sum-) "830dcdd998fe31e368add143b5ab2580")
(setf (get bulletsim_msgs::Mesh :datatype-) "bulletsim_msgs/Mesh")
(setf (get bulletsim_msgs::Mesh :definition-)
      "geometry_msgs/Point[] vertices
geometry_msgs/Point[] normals
Face[] faces
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: bulletsim_msgs/Face
uint32[] vertex_inds
uint32[] normal_inds
")



(provide :bulletsim_msgs/Mesh "830dcdd998fe31e368add143b5ab2580")


