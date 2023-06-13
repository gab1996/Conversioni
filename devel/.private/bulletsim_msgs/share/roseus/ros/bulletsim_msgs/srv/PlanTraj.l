;; Auto-generated. Do not edit!


(when (boundp 'bulletsim_msgs::PlanTraj)
  (if (not (find-package "BULLETSIM_MSGS"))
    (make-package "BULLETSIM_MSGS"))
  (shadow 'PlanTraj (find-package "BULLETSIM_MSGS")))
(unless (find-package "BULLETSIM_MSGS::PLANTRAJ")
  (make-package "BULLETSIM_MSGS::PLANTRAJ"))
(unless (find-package "BULLETSIM_MSGS::PLANTRAJREQUEST")
  (make-package "BULLETSIM_MSGS::PLANTRAJREQUEST"))
(unless (find-package "BULLETSIM_MSGS::PLANTRAJRESPONSE")
  (make-package "BULLETSIM_MSGS::PLANTRAJRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass bulletsim_msgs::PlanTrajRequest
  :super ros::object
  :slots (_side _start_joints _end_joints _joint_states ))

(defmethod bulletsim_msgs::PlanTrajRequest
  (:init
   (&key
    ((:side __side) "")
    ((:start_joints __start_joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:end_joints __end_joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_states __joint_states) (instance sensor_msgs::JointState :init))
    )
   (send-super :init)
   (setq _side (string __side))
   (setq _start_joints __start_joints)
   (setq _end_joints __end_joints)
   (setq _joint_states __joint_states)
   self)
  (:side
   (&optional __side)
   (if __side (setq _side __side)) _side)
  (:start_joints
   (&optional __start_joints)
   (if __start_joints (setq _start_joints __start_joints)) _start_joints)
  (:end_joints
   (&optional __end_joints)
   (if __end_joints (setq _end_joints __end_joints)) _end_joints)
  (:joint_states
   (&rest __joint_states)
   (if (keywordp (car __joint_states))
       (send* _joint_states __joint_states)
     (progn
       (if __joint_states (setq _joint_states (car __joint_states)))
       _joint_states)))
  (:serialization-length
   ()
   (+
    ;; string _side
    4 (length _side)
    ;; float64[] _start_joints
    (* 8    (length _start_joints)) 4
    ;; float64[] _end_joints
    (* 8    (length _end_joints)) 4
    ;; sensor_msgs/JointState _joint_states
    (send _joint_states :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _side
       (write-long (length _side) s) (princ _side s)
     ;; float64[] _start_joints
     (write-long (length _start_joints) s)
     (dotimes (i (length _start_joints))
       (sys::poke (elt _start_joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _end_joints
     (write-long (length _end_joints) s)
     (dotimes (i (length _end_joints))
       (sys::poke (elt _end_joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; sensor_msgs/JointState _joint_states
       (send _joint_states :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _side
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _side (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _start_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _start_joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _end_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _end_joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; sensor_msgs/JointState _joint_states
     (send _joint_states :deserialize buf ptr-) (incf ptr- (send _joint_states :serialization-length))
   ;;
   self)
  )

(defclass bulletsim_msgs::PlanTrajResponse
  :super ros::object
  :slots (_trajectory ))

(defmethod bulletsim_msgs::PlanTrajResponse
  (:init
   (&key
    ((:trajectory __trajectory) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   self)
  (:trajectory
   (&optional __trajectory)
   (if __trajectory (setq _trajectory __trajectory)) _trajectory)
  (:serialization-length
   ()
   (+
    ;; float64[] _trajectory
    (* 8    (length _trajectory)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _trajectory
     (write-long (length _trajectory) s)
     (dotimes (i (length _trajectory))
       (sys::poke (elt _trajectory i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _trajectory i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass bulletsim_msgs::PlanTraj
  :super ros::object
  :slots ())

(setf (get bulletsim_msgs::PlanTraj :md5sum-) "99d192cef3d7416d1c568b72205fe94b")
(setf (get bulletsim_msgs::PlanTraj :datatype-) "bulletsim_msgs/PlanTraj")
(setf (get bulletsim_msgs::PlanTraj :request) bulletsim_msgs::PlanTrajRequest)
(setf (get bulletsim_msgs::PlanTraj :response) bulletsim_msgs::PlanTrajResponse)

(defmethod bulletsim_msgs::PlanTrajRequest
  (:response () (instance bulletsim_msgs::PlanTrajResponse :init)))

(setf (get bulletsim_msgs::PlanTrajRequest :md5sum-) "99d192cef3d7416d1c568b72205fe94b")
(setf (get bulletsim_msgs::PlanTrajRequest :datatype-) "bulletsim_msgs/PlanTrajRequest")
(setf (get bulletsim_msgs::PlanTrajRequest :definition-)
      "string side
float64[] start_joints
float64[] end_joints
sensor_msgs/JointState joint_states

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
---
float64[] trajectory
")

(setf (get bulletsim_msgs::PlanTrajResponse :md5sum-) "99d192cef3d7416d1c568b72205fe94b")
(setf (get bulletsim_msgs::PlanTrajResponse :datatype-) "bulletsim_msgs/PlanTrajResponse")
(setf (get bulletsim_msgs::PlanTrajResponse :definition-)
      "string side
float64[] start_joints
float64[] end_joints
sensor_msgs/JointState joint_states

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
---
float64[] trajectory
")



(provide :bulletsim_msgs/PlanTraj "99d192cef3d7416d1c568b72205fe94b")


