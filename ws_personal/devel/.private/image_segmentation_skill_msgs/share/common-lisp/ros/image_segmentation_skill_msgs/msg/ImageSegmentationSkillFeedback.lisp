; Auto-generated. Do not edit!


(cl:in-package image_segmentation_skill_msgs-msg)


;//! \htmlinclude ImageSegmentationSkillFeedback.msg.html

(cl:defclass <ImageSegmentationSkillFeedback> (roslisp-msg-protocol:ros-message)
  ((percentage
    :reader percentage
    :initarg :percentage
    :type cl:integer
    :initform 0)
   (skillStatus
    :reader skillStatus
    :initarg :skillStatus
    :type cl:string
    :initform ""))
)

(cl:defclass ImageSegmentationSkillFeedback (<ImageSegmentationSkillFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageSegmentationSkillFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageSegmentationSkillFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_segmentation_skill_msgs-msg:<ImageSegmentationSkillFeedback> is deprecated: use image_segmentation_skill_msgs-msg:ImageSegmentationSkillFeedback instead.")))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <ImageSegmentationSkillFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_segmentation_skill_msgs-msg:percentage-val is deprecated.  Use image_segmentation_skill_msgs-msg:percentage instead.")
  (percentage m))

(cl:ensure-generic-function 'skillStatus-val :lambda-list '(m))
(cl:defmethod skillStatus-val ((m <ImageSegmentationSkillFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_segmentation_skill_msgs-msg:skillStatus-val is deprecated.  Use image_segmentation_skill_msgs-msg:skillStatus instead.")
  (skillStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageSegmentationSkillFeedback>) ostream)
  "Serializes a message object of type '<ImageSegmentationSkillFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'skillStatus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'skillStatus))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageSegmentationSkillFeedback>) istream)
  "Deserializes a message object of type '<ImageSegmentationSkillFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'percentage) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'skillStatus) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'skillStatus) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageSegmentationSkillFeedback>)))
  "Returns string type for a message object of type '<ImageSegmentationSkillFeedback>"
  "image_segmentation_skill_msgs/ImageSegmentationSkillFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageSegmentationSkillFeedback)))
  "Returns string type for a message object of type 'ImageSegmentationSkillFeedback"
  "image_segmentation_skill_msgs/ImageSegmentationSkillFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageSegmentationSkillFeedback>)))
  "Returns md5sum for a message object of type '<ImageSegmentationSkillFeedback>"
  "679659a5e7bd72a0f86fdd2a666e4c40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageSegmentationSkillFeedback)))
  "Returns md5sum for a message object of type 'ImageSegmentationSkillFeedback"
  "679659a5e7bd72a0f86fdd2a666e4c40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageSegmentationSkillFeedback>)))
  "Returns full string definition for message of type '<ImageSegmentationSkillFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#####################~%# Feedback definition~%int32 percentage~%string skillStatus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageSegmentationSkillFeedback)))
  "Returns full string definition for message of type 'ImageSegmentationSkillFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#####################~%# Feedback definition~%int32 percentage~%string skillStatus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageSegmentationSkillFeedback>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'skillStatus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageSegmentationSkillFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageSegmentationSkillFeedback
    (cl:cons ':percentage (percentage msg))
    (cl:cons ':skillStatus (skillStatus msg))
))
