; Auto-generated. Do not edit!


(cl:in-package dope_skill_msgs-msg)


;//! \htmlinclude DopeSkillGoal.msg.html

(cl:defclass <DopeSkillGoal> (roslisp-msg-protocol:ros-message)
  ((operation_mode
    :reader operation_mode
    :initarg :operation_mode
    :type cl:integer
    :initform 0)
   (model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform "")
   (object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform ""))
)

(cl:defclass DopeSkillGoal (<DopeSkillGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DopeSkillGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DopeSkillGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dope_skill_msgs-msg:<DopeSkillGoal> is deprecated: use dope_skill_msgs-msg:DopeSkillGoal instead.")))

(cl:ensure-generic-function 'operation_mode-val :lambda-list '(m))
(cl:defmethod operation_mode-val ((m <DopeSkillGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dope_skill_msgs-msg:operation_mode-val is deprecated.  Use dope_skill_msgs-msg:operation_mode instead.")
  (operation_mode m))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <DopeSkillGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dope_skill_msgs-msg:model_name-val is deprecated.  Use dope_skill_msgs-msg:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <DopeSkillGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dope_skill_msgs-msg:object_name-val is deprecated.  Use dope_skill_msgs-msg:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DopeSkillGoal>) ostream)
  "Serializes a message object of type '<DopeSkillGoal>"
  (cl:let* ((signed (cl:slot-value msg 'operation_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DopeSkillGoal>) istream)
  "Deserializes a message object of type '<DopeSkillGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DopeSkillGoal>)))
  "Returns string type for a message object of type '<DopeSkillGoal>"
  "dope_skill_msgs/DopeSkillGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DopeSkillGoal)))
  "Returns string type for a message object of type 'DopeSkillGoal"
  "dope_skill_msgs/DopeSkillGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DopeSkillGoal>)))
  "Returns md5sum for a message object of type '<DopeSkillGoal>"
  "2397551434b69a269cde975c677c8bb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DopeSkillGoal)))
  "Returns md5sum for a message object of type 'DopeSkillGoal"
  "2397551434b69a269cde975c677c8bb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DopeSkillGoal>)))
  "Returns full string definition for message of type '<DopeSkillGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%int32 operation_mode~%string model_name~%string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DopeSkillGoal)))
  "Returns full string definition for message of type 'DopeSkillGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%int32 operation_mode~%string model_name~%string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DopeSkillGoal>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'model_name))
     4 (cl:length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DopeSkillGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'DopeSkillGoal
    (cl:cons ':operation_mode (operation_mode msg))
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':object_name (object_name msg))
))
