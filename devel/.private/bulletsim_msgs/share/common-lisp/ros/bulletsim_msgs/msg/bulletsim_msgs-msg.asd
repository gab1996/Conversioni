
(cl:in-package :asdf)

(defsystem "bulletsim_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Box" :depends-on ("_package_Box"))
    (:file "_package_Box" :depends-on ("_package"))
    (:file "Face" :depends-on ("_package_Face"))
    (:file "_package_Face" :depends-on ("_package"))
    (:file "Mesh" :depends-on ("_package_Mesh"))
    (:file "_package_Mesh" :depends-on ("_package"))
    (:file "OWLMarker" :depends-on ("_package_OWLMarker"))
    (:file "_package_OWLMarker" :depends-on ("_package"))
    (:file "OWLPhasespace" :depends-on ("_package_OWLPhasespace"))
    (:file "_package_OWLPhasespace" :depends-on ("_package"))
    (:file "ObjectInit" :depends-on ("_package_ObjectInit"))
    (:file "_package_ObjectInit" :depends-on ("_package"))
    (:file "Rope" :depends-on ("_package_Rope"))
    (:file "_package_Rope" :depends-on ("_package"))
    (:file "TowelCorners" :depends-on ("_package_TowelCorners"))
    (:file "_package_TowelCorners" :depends-on ("_package"))
    (:file "TrackedObject" :depends-on ("_package_TrackedObject"))
    (:file "_package_TrackedObject" :depends-on ("_package"))
  ))