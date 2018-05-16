; Auto-generated. Do not edit!


(cl:in-package detect_hog-msg)


;//! \htmlinclude RobotCamGlobalPos.msg.html

(cl:defclass <RobotCamGlobalPos> (roslisp-msg-protocol:ros-message)
  ((left_exist_rob_flag
    :reader left_exist_rob_flag
    :initarg :left_exist_rob_flag
    :type cl:boolean
    :initform cl:nil)
   (right_exist_rob_flag
    :reader right_exist_rob_flag
    :initarg :right_exist_rob_flag
    :type cl:boolean
    :initform cl:nil)
   (back_exist_rob_flag
    :reader back_exist_rob_flag
    :initarg :back_exist_rob_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotCamGlobalPos (<RobotCamGlobalPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotCamGlobalPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotCamGlobalPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detect_hog-msg:<RobotCamGlobalPos> is deprecated: use detect_hog-msg:RobotCamGlobalPos instead.")))

(cl:ensure-generic-function 'left_exist_rob_flag-val :lambda-list '(m))
(cl:defmethod left_exist_rob_flag-val ((m <RobotCamGlobalPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect_hog-msg:left_exist_rob_flag-val is deprecated.  Use detect_hog-msg:left_exist_rob_flag instead.")
  (left_exist_rob_flag m))

(cl:ensure-generic-function 'right_exist_rob_flag-val :lambda-list '(m))
(cl:defmethod right_exist_rob_flag-val ((m <RobotCamGlobalPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect_hog-msg:right_exist_rob_flag-val is deprecated.  Use detect_hog-msg:right_exist_rob_flag instead.")
  (right_exist_rob_flag m))

(cl:ensure-generic-function 'back_exist_rob_flag-val :lambda-list '(m))
(cl:defmethod back_exist_rob_flag-val ((m <RobotCamGlobalPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect_hog-msg:back_exist_rob_flag-val is deprecated.  Use detect_hog-msg:back_exist_rob_flag instead.")
  (back_exist_rob_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotCamGlobalPos>) ostream)
  "Serializes a message object of type '<RobotCamGlobalPos>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_exist_rob_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_exist_rob_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'back_exist_rob_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotCamGlobalPos>) istream)
  "Deserializes a message object of type '<RobotCamGlobalPos>"
    (cl:setf (cl:slot-value msg 'left_exist_rob_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_exist_rob_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'back_exist_rob_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotCamGlobalPos>)))
  "Returns string type for a message object of type '<RobotCamGlobalPos>"
  "detect_hog/RobotCamGlobalPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotCamGlobalPos)))
  "Returns string type for a message object of type 'RobotCamGlobalPos"
  "detect_hog/RobotCamGlobalPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotCamGlobalPos>)))
  "Returns md5sum for a message object of type '<RobotCamGlobalPos>"
  "6d936f630f6ff27a9e7df7df229d3501")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotCamGlobalPos)))
  "Returns md5sum for a message object of type 'RobotCamGlobalPos"
  "6d936f630f6ff27a9e7df7df229d3501")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotCamGlobalPos>)))
  "Returns full string definition for message of type '<RobotCamGlobalPos>"
  (cl:format cl:nil "bool left_exist_rob_flag~%bool right_exist_rob_flag~%bool back_exist_rob_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotCamGlobalPos)))
  "Returns full string definition for message of type 'RobotCamGlobalPos"
  (cl:format cl:nil "bool left_exist_rob_flag~%bool right_exist_rob_flag~%bool back_exist_rob_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotCamGlobalPos>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotCamGlobalPos>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotCamGlobalPos
    (cl:cons ':left_exist_rob_flag (left_exist_rob_flag msg))
    (cl:cons ':right_exist_rob_flag (right_exist_rob_flag msg))
    (cl:cons ':back_exist_rob_flag (back_exist_rob_flag msg))
))
