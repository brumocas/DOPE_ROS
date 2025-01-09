; Auto-generated. Do not edit!


(cl:in-package image_segmentation_skill_msgs-msg)


;//! \htmlinclude MaskDefinition.msg.html

(cl:defclass <MaskDefinition> (roslisp-msg-protocol:ros-message)
  ((instance_nr
    :reader instance_nr
    :initarg :instance_nr
    :type cl:integer
    :initform 0)
   (scores
    :reader scores
    :initarg :scores
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray))
   (mask_image
    :reader mask_image
    :initarg :mask_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass MaskDefinition (<MaskDefinition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaskDefinition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaskDefinition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_segmentation_skill_msgs-msg:<MaskDefinition> is deprecated: use image_segmentation_skill_msgs-msg:MaskDefinition instead.")))

(cl:ensure-generic-function 'instance_nr-val :lambda-list '(m))
(cl:defmethod instance_nr-val ((m <MaskDefinition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_segmentation_skill_msgs-msg:instance_nr-val is deprecated.  Use image_segmentation_skill_msgs-msg:instance_nr instead.")
  (instance_nr m))

(cl:ensure-generic-function 'scores-val :lambda-list '(m))
(cl:defmethod scores-val ((m <MaskDefinition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_segmentation_skill_msgs-msg:scores-val is deprecated.  Use image_segmentation_skill_msgs-msg:scores instead.")
  (scores m))

(cl:ensure-generic-function 'mask_image-val :lambda-list '(m))
(cl:defmethod mask_image-val ((m <MaskDefinition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_segmentation_skill_msgs-msg:mask_image-val is deprecated.  Use image_segmentation_skill_msgs-msg:mask_image instead.")
  (mask_image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaskDefinition>) ostream)
  "Serializes a message object of type '<MaskDefinition>"
  (cl:let* ((signed (cl:slot-value msg 'instance_nr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scores) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mask_image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaskDefinition>) istream)
  "Deserializes a message object of type '<MaskDefinition>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'instance_nr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scores) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mask_image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaskDefinition>)))
  "Returns string type for a message object of type '<MaskDefinition>"
  "image_segmentation_skill_msgs/MaskDefinition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaskDefinition)))
  "Returns string type for a message object of type 'MaskDefinition"
  "image_segmentation_skill_msgs/MaskDefinition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaskDefinition>)))
  "Returns md5sum for a message object of type '<MaskDefinition>"
  "2956c47ca0a6c4fd0e5fb94e6e6dca48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaskDefinition)))
  "Returns md5sum for a message object of type 'MaskDefinition"
  "2956c47ca0a6c4fd0e5fb94e6e6dca48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaskDefinition>)))
  "Returns full string definition for message of type '<MaskDefinition>"
  (cl:format cl:nil "int32 instance_nr~%std_msgs/Float32MultiArray scores~%sensor_msgs/Image mask_image~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaskDefinition)))
  "Returns full string definition for message of type 'MaskDefinition"
  (cl:format cl:nil "int32 instance_nr~%std_msgs/Float32MultiArray scores~%sensor_msgs/Image mask_image~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaskDefinition>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scores))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mask_image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaskDefinition>))
  "Converts a ROS message object to a list"
  (cl:list 'MaskDefinition
    (cl:cons ':instance_nr (instance_nr msg))
    (cl:cons ':scores (scores msg))
    (cl:cons ':mask_image (mask_image msg))
))
