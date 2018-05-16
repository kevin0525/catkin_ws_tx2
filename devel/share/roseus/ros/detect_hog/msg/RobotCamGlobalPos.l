;; Auto-generated. Do not edit!


(when (boundp 'detect_hog::RobotCamGlobalPos)
  (if (not (find-package "DETECT_HOG"))
    (make-package "DETECT_HOG"))
  (shadow 'RobotCamGlobalPos (find-package "DETECT_HOG")))
(unless (find-package "DETECT_HOG::ROBOTCAMGLOBALPOS")
  (make-package "DETECT_HOG::ROBOTCAMGLOBALPOS"))

(in-package "ROS")
;;//! \htmlinclude RobotCamGlobalPos.msg.html


(defclass detect_hog::RobotCamGlobalPos
  :super ros::object
  :slots (_left_exist_rob_flag _right_exist_rob_flag _back_exist_rob_flag ))

(defmethod detect_hog::RobotCamGlobalPos
  (:init
   (&key
    ((:left_exist_rob_flag __left_exist_rob_flag) nil)
    ((:right_exist_rob_flag __right_exist_rob_flag) nil)
    ((:back_exist_rob_flag __back_exist_rob_flag) nil)
    )
   (send-super :init)
   (setq _left_exist_rob_flag __left_exist_rob_flag)
   (setq _right_exist_rob_flag __right_exist_rob_flag)
   (setq _back_exist_rob_flag __back_exist_rob_flag)
   self)
  (:left_exist_rob_flag
   (&optional __left_exist_rob_flag)
   (if __left_exist_rob_flag (setq _left_exist_rob_flag __left_exist_rob_flag)) _left_exist_rob_flag)
  (:right_exist_rob_flag
   (&optional __right_exist_rob_flag)
   (if __right_exist_rob_flag (setq _right_exist_rob_flag __right_exist_rob_flag)) _right_exist_rob_flag)
  (:back_exist_rob_flag
   (&optional __back_exist_rob_flag)
   (if __back_exist_rob_flag (setq _back_exist_rob_flag __back_exist_rob_flag)) _back_exist_rob_flag)
  (:serialization-length
   ()
   (+
    ;; bool _left_exist_rob_flag
    1
    ;; bool _right_exist_rob_flag
    1
    ;; bool _back_exist_rob_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _left_exist_rob_flag
       (if _left_exist_rob_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_exist_rob_flag
       (if _right_exist_rob_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _back_exist_rob_flag
       (if _back_exist_rob_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _left_exist_rob_flag
     (setq _left_exist_rob_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_exist_rob_flag
     (setq _right_exist_rob_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _back_exist_rob_flag
     (setq _back_exist_rob_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get detect_hog::RobotCamGlobalPos :md5sum-) "6d936f630f6ff27a9e7df7df229d3501")
(setf (get detect_hog::RobotCamGlobalPos :datatype-) "detect_hog/RobotCamGlobalPos")
(setf (get detect_hog::RobotCamGlobalPos :definition-)
      "bool left_exist_rob_flag
bool right_exist_rob_flag
bool back_exist_rob_flag

")



(provide :detect_hog/RobotCamGlobalPos "6d936f630f6ff27a9e7df7df229d3501")


