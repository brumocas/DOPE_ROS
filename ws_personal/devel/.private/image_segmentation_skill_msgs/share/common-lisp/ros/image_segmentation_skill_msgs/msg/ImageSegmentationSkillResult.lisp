; Auto-generated. Do not edit!


(cl:in-package image_segmentation_skill_msgs-msg)


;//! \htmlinclude ImageSegmentationSkillResult.msg.html

(cl:defclass <ImageSegmentationSkillResult> (roslisp-msg-protocol:ros-message)
  ((percentage
    :reader percentage
    :initarg :percentage
    :type cl:integer
    :initform 0)
   (skillStatus
    :reader skillStatus
    :initarg :skillStatus
    :type cl:string
    :initform "")
   (outcome
    :reader outcome
    :initarg :outcome
    :type cl:string
    :initform "")
   (mask_pub
    :reader mask_pub
    :initarg :mask_pub
    :type image_segmentation_skill_msgs-msg:MaskDefinition
    :initform (cl:make-instance 'image_segmentation_skill_msgs-msg:MaskDefinition)))
)

(cl:defclass ImageSegmentationSkillResult (<ImageSegmentationSkillResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageSegmentationSkillResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageSegmentationSkillResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_segmentation_skill_msgs-msg:<ImageSegmentationSkillResult> is deprecated: use image_segmentation_skill_msgs-msg:ImageSegmentationSkillResult instead.")))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <ImageSegmentationSkillResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_segmentation_skill_msgs-msg:percentage-val is deprecated.  Use image_segmentation_skill_msgs-msg:percentage instead.")
  (percentage m))

(cl:ensure-generic-function 'skillStatus-val :lambda-list '(m))
(cl:defmethod skillStatus-val ((m <ImageSegmentationSkillResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_segmentation_skill_msgs-msg:skillStatus-val is deprecated.  Use image_segmentation_skill_msgs-msg:skillStatus instead.")
  (skillStatus m))

(cl:ensure-generic-function 'outcome-val :lambda-list '(m))
(cl:defmethod outcome-val ((m <ImageSegmentationSkillResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_segmentation_skill_msgs-msg:outcome-val is deprecated.  Use image_segmentation_skill_msgs-msg:outcome instead.")
  (outcome m))

(cl:ensure-generic-function 'mask_pub-val :lambda-list '(m))
(cl:defmethod mask_pub-val ((m <ImageSegmentationSkillResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_segmentation_skill_msgs-msg:mask_pub-val is deprecated.  Use image_segmentation_skill_msgs-msg:mask_pub instead.")
  (mask_pub m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageSegmentationSkillResult>) ostream)
  "Serializes a message object of type '<ImageSegmentationSkillResult>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'outcome))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'outcome))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mask_pub) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageSegmentationSkillResult>) istream)
  "Deserializes a message object of type '<ImageSegmentationSkillResult>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'outcome) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'outcome) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mask_pub) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageSegmentationSkillResult>)))
  "Returns string type for a message object of type '<ImageSegmentationSkillResult>"
  "image_segmentation_skill_msgs/ImageSegmentationSkillResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageSegmentationSkillResult)))
  "Returns string type for a message object of type 'ImageSegmentationSkillResult"
  "image_segmentation_skill_msgs/ImageSegmentationSkillResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageSegmentationSkillResult>)))
  "Returns md5sum for a message object of type '<ImageSegmentationSkillResult>"
  "aaab811457c594f5592825b0e0a9f167")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageSegmentationSkillResult)))
  "Returns md5sum for a message object of type 'ImageSegmentationSkillResult"
  "aaab811457c594f5592825b0e0a9f167")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageSegmentationSkillResult>)))
  "Returns full string definition for message of type '<ImageSegmentationSkillResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%###################~%# Result definition~%~%#sensor_msgs/PointCloud2 cloud~%int32 percentage~%string skillStatus~%string outcome~%image_segmentation_skill_msgs/MaskDefinition mask_pub~%~%================================================================================~%MSG: image_segmentation_skill_msgs/MaskDefinition~%int32 instance_nr~%std_msgs/Float32MultiArray scores~%sensor_msgs/Image mask_image~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageSegmentationSkillResult)))
  "Returns full string definition for message of type 'ImageSegmentationSkillResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%###################~%# Result definition~%~%#sensor_msgs/PointCloud2 cloud~%int32 percentage~%string skillStatus~%string outcome~%image_segmentation_skill_msgs/MaskDefinition mask_pub~%~%================================================================================~%MSG: image_segmentation_skill_msgs/MaskDefinition~%int32 instance_nr~%std_msgs/Float32MultiArray scores~%sensor_msgs/Image mask_image~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageSegmentationSkillResult>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'skillStatus))
     4 (cl:length (cl:slot-value msg 'outcome))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mask_pub))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageSegmentationSkillResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageSegmentationSkillResult
    (cl:cons ':percentage (percentage msg))
    (cl:cons ':skillStatus (skillStatus msg))
    (cl:cons ':outcome (outcome msg))
    (cl:cons ':mask_pub (mask_pub msg))
))
