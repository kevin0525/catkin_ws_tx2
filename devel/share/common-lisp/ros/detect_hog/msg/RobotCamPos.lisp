; Auto-generated. Do not edit!


(cl:in-package detect_hog-msg)


;//! \htmlinclude RobotCamPos.msg.html

(cl:defclass <RobotCamPos> (roslisp-msg-protocol:ros-message)
  ((exist_rob_flag
    :reader exist_rob_flag
    :initarg :exist_rob_flag
    :type cl:boolean
    :initform cl:nil)
   (rob_num
    :reader rob_num
    :initarg :rob_num
    :type cl:integer
    :initform 0)
   (rob_cam_pos_x
    :reader rob_cam_pos_x
    :initarg :rob_cam_pos_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0))
   (rob_cam_pos_y
    :reader rob_cam_pos_y
    :initarg :rob_cam_pos_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0))
   (rob_cam_vel_x
    :reader rob_cam_vel_x
    :initarg :rob_cam_vel_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0))
   (rob_cam_vel_y
    :reader rob_cam_vel_y
    :initarg :rob_cam_vel_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RobotCamPos (<RobotCamPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotCamPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotCamPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detect_hog-msg:<RobotCamPos> is deprecated: use detect_hog-msg:RobotCamPos instead.")))

(cl:ensure-generic-function 'exist_rob_flag-val :lambda-list '(m))
(cl:defmethod exist_rob_flag-val ((m <RobotCamPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect_hog-msg:exist_rob_flag-val is deprecated.  Use detect_hog-msg:exist_rob_flag instead.")
  (exist_rob_flag m))

(cl:ensure-generic-function 'rob_num-val :lambda-list '(m))
(cl:defmethod rob_num-val ((m <RobotCamPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect_hog-msg:rob_num-val is deprecated.  Use detect_hog-msg:rob_num instead.")
  (rob_num m))

(cl:ensure-generic-function 'rob_cam_pos_x-val :lambda-list '(m))
(cl:defmethod rob_cam_pos_x-val ((m <RobotCamPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect_hog-msg:rob_cam_pos_x-val is deprecated.  Use detect_hog-msg:rob_cam_pos_x instead.")
  (rob_cam_pos_x m))

(cl:ensure-generic-function 'rob_cam_pos_y-val :lambda-list '(m))
(cl:defmethod rob_cam_pos_y-val ((m <RobotCamPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect_hog-msg:rob_cam_pos_y-val is deprecated.  Use detect_hog-msg:rob_cam_pos_y instead.")
  (rob_cam_pos_y m))

(cl:ensure-generic-function 'rob_cam_vel_x-val :lambda-list '(m))
(cl:defmethod rob_cam_vel_x-val ((m <RobotCamPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect_hog-msg:rob_cam_vel_x-val is deprecated.  Use detect_hog-msg:rob_cam_vel_x instead.")
  (rob_cam_vel_x m))

(cl:ensure-generic-function 'rob_cam_vel_y-val :lambda-list '(m))
(cl:defmethod rob_cam_vel_y-val ((m <RobotCamPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect_hog-msg:rob_cam_vel_y-val is deprecated.  Use detect_hog-msg:rob_cam_vel_y instead.")
  (rob_cam_vel_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotCamPos>) ostream)
  "Serializes a message object of type '<RobotCamPos>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'exist_rob_flag) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rob_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'rob_cam_pos_x))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'rob_cam_pos_y))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'rob_cam_vel_x))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'rob_cam_vel_y))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotCamPos>) istream)
  "Deserializes a message object of type '<RobotCamPos>"
    (cl:setf (cl:slot-value msg 'exist_rob_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rob_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'rob_cam_pos_x) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'rob_cam_pos_x)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'rob_cam_pos_y) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'rob_cam_pos_y)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'rob_cam_vel_x) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'rob_cam_vel_x)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'rob_cam_vel_y) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'rob_cam_vel_y)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotCamPos>)))
  "Returns string type for a message object of type '<RobotCamPos>"
  "detect_hog/RobotCamPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotCamPos)))
  "Returns string type for a message object of type 'RobotCamPos"
  "detect_hog/RobotCamPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotCamPos>)))
  "Returns md5sum for a message object of type '<RobotCamPos>"
  "b6d1df053b1518d33523e7d629bdecc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotCamPos)))
  "Returns md5sum for a message object of type 'RobotCamPos"
  "b6d1df053b1518d33523e7d629bdecc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotCamPos>)))
  "Returns full string definition for message of type '<RobotCamPos>"
  (cl:format cl:nil "bool exist_rob_flag~%int32 rob_num~%float64[5] rob_cam_pos_x~%float64[5] rob_cam_pos_y~%float64[5] rob_cam_vel_x~%float64[5] rob_cam_vel_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotCamPos)))
  "Returns full string definition for message of type 'RobotCamPos"
  (cl:format cl:nil "bool exist_rob_flag~%int32 rob_num~%float64[5] rob_cam_pos_x~%float64[5] rob_cam_pos_y~%float64[5] rob_cam_vel_x~%float64[5] rob_cam_vel_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotCamPos>))
  (cl:+ 0
     1
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rob_cam_pos_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rob_cam_pos_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rob_cam_vel_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rob_cam_vel_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotCamPos>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotCamPos
    (cl:cons ':exist_rob_flag (exist_rob_flag msg))
    (cl:cons ':rob_num (rob_num msg))
    (cl:cons ':rob_cam_pos_x (rob_cam_pos_x msg))
    (cl:cons ':rob_cam_pos_y (rob_cam_pos_y msg))
    (cl:cons ':rob_cam_vel_x (rob_cam_vel_x msg))
    (cl:cons ':rob_cam_vel_y (rob_cam_vel_y msg))
))
