
(cl:in-package :asdf)

(defsystem "detect_hog-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RobotCamGlobalPos" :depends-on ("_package_RobotCamGlobalPos"))
    (:file "_package_RobotCamGlobalPos" :depends-on ("_package"))
    (:file "RobotCamPos" :depends-on ("_package_RobotCamPos"))
    (:file "_package_RobotCamPos" :depends-on ("_package"))
  ))