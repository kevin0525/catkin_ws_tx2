;; Auto-generated. Do not edit!


(when (boundp 'detect_hog::RobotCamPos)
  (if (not (find-package "DETECT_HOG"))
    (make-package "DETECT_HOG"))
  (shadow 'RobotCamPos (find-package "DETECT_HOG")))
(unless (find-package "DETECT_HOG::ROBOTCAMPOS")
  (make-package "DETECT_HOG::ROBOTCAMPOS"))

(in-package "ROS")
;;//! \htmlinclude RobotCamPos.msg.html


(defclass detect_hog::RobotCamPos
  :super ros::object
  :slots (_exist_rob_flag _rob_num _rob_cam_pos_x _rob_cam_pos_y _rob_cam_vel_x _rob_cam_vel_y ))

(defmethod detect_hog::RobotCamPos
  (:init
   (&key
    ((:exist_rob_flag __exist_rob_flag) nil)
    ((:rob_num __rob_num) 0)
    ((:rob_cam_pos_x __rob_cam_pos_x) (make-array 5 :initial-element 0.0 :element-type :float))
    ((:rob_cam_pos_y __rob_cam_pos_y) (make-array 5 :initial-element 0.0 :element-type :float))
    ((:rob_cam_vel_x __rob_cam_vel_x) (make-array 5 :initial-element 0.0 :element-type :float))
    ((:rob_cam_vel_y __rob_cam_vel_y) (make-array 5 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _exist_rob_flag __exist_rob_flag)
   (setq _rob_num (round __rob_num))
   (setq _rob_cam_pos_x __rob_cam_pos_x)
   (setq _rob_cam_pos_y __rob_cam_pos_y)
   (setq _rob_cam_vel_x __rob_cam_vel_x)
   (setq _rob_cam_vel_y __rob_cam_vel_y)
   self)
  (:exist_rob_flag
   (&optional __exist_rob_flag)
   (if __exist_rob_flag (setq _exist_rob_flag __exist_rob_flag)) _exist_rob_flag)
  (:rob_num
   (&optional __rob_num)
   (if __rob_num (setq _rob_num __rob_num)) _rob_num)
  (:rob_cam_pos_x
   (&optional __rob_cam_pos_x)
   (if __rob_cam_pos_x (setq _rob_cam_pos_x __rob_cam_pos_x)) _rob_cam_pos_x)
  (:rob_cam_pos_y
   (&optional __rob_cam_pos_y)
   (if __rob_cam_pos_y (setq _rob_cam_pos_y __rob_cam_pos_y)) _rob_cam_pos_y)
  (:rob_cam_vel_x
   (&optional __rob_cam_vel_x)
   (if __rob_cam_vel_x (setq _rob_cam_vel_x __rob_cam_vel_x)) _rob_cam_vel_x)
  (:rob_cam_vel_y
   (&optional __rob_cam_vel_y)
   (if __rob_cam_vel_y (setq _rob_cam_vel_y __rob_cam_vel_y)) _rob_cam_vel_y)
  (:serialization-length
   ()
   (+
    ;; bool _exist_rob_flag
    1
    ;; int32 _rob_num
    4
    ;; float64[5] _rob_cam_pos_x
    (* 8    5)
    ;; float64[5] _rob_cam_pos_y
    (* 8    5)
    ;; float64[5] _rob_cam_vel_x
    (* 8    5)
    ;; float64[5] _rob_cam_vel_y
    (* 8    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _exist_rob_flag
       (if _exist_rob_flag (write-byte -1 s) (write-byte 0 s))
     ;; int32 _rob_num
       (write-long _rob_num s)
     ;; float64[5] _rob_cam_pos_x
     (dotimes (i 5)
       (sys::poke (elt _rob_cam_pos_x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[5] _rob_cam_pos_y
     (dotimes (i 5)
       (sys::poke (elt _rob_cam_pos_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[5] _rob_cam_vel_x
     (dotimes (i 5)
       (sys::poke (elt _rob_cam_vel_x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[5] _rob_cam_vel_y
     (dotimes (i 5)
       (sys::poke (elt _rob_cam_vel_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _exist_rob_flag
     (setq _exist_rob_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _rob_num
     (setq _rob_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[5] _rob_cam_pos_x
   (dotimes (i (length _rob_cam_pos_x))
     (setf (elt _rob_cam_pos_x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[5] _rob_cam_pos_y
   (dotimes (i (length _rob_cam_pos_y))
     (setf (elt _rob_cam_pos_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[5] _rob_cam_vel_x
   (dotimes (i (length _rob_cam_vel_x))
     (setf (elt _rob_cam_vel_x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[5] _rob_cam_vel_y
   (dotimes (i (length _rob_cam_vel_y))
     (setf (elt _rob_cam_vel_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get detect_hog::RobotCamPos :md5sum-) "b6d1df053b1518d33523e7d629bdecc1")
(setf (get detect_hog::RobotCamPos :datatype-) "detect_hog/RobotCamPos")
(setf (get detect_hog::RobotCamPos :definition-)
      "bool exist_rob_flag
int32 rob_num
float64[5] rob_cam_pos_x
float64[5] rob_cam_pos_y
float64[5] rob_cam_vel_x
float64[5] rob_cam_vel_y


")



(provide :detect_hog/RobotCamPos "b6d1df053b1518d33523e7d629bdecc1")


