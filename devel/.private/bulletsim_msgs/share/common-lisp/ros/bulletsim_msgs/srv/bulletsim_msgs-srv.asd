
(cl:in-package :asdf)

(defsystem "bulletsim_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :bulletsim_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "GetTable" :depends-on ("_package_GetTable"))
    (:file "_package_GetTable" :depends-on ("_package"))
    (:file "Initialization" :depends-on ("_package_Initialization"))
    (:file "_package_Initialization" :depends-on ("_package"))
    (:file "PlanTraj" :depends-on ("_package_PlanTraj"))
    (:file "_package_PlanTraj" :depends-on ("_package"))
  ))