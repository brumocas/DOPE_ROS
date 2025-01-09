;; Auto-generated. Do not edit!


(when (boundp 'image_segmentation_skill_msgs::MaskDefinition)
  (if (not (find-package "IMAGE_SEGMENTATION_SKILL_MSGS"))
    (make-package "IMAGE_SEGMENTATION_SKILL_MSGS"))
  (shadow 'MaskDefinition (find-package "IMAGE_SEGMENTATION_SKILL_MSGS")))
(unless (find-package "IMAGE_SEGMENTATION_SKILL_MSGS::MASKDEFINITION")
  (make-package "IMAGE_SEGMENTATION_SKILL_MSGS::MASKDEFINITION"))

(in-package "ROS")
;;//! \htmlinclude MaskDefinition.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass image_segmentation_skill_msgs::MaskDefinition
  :super ros::object
  :slots (_instance_nr _scores _mask_image ))

(defmethod image_segmentation_skill_msgs::MaskDefinition
  (:init
   (&key
    ((:instance_nr __instance_nr) 0)
    ((:scores __scores) (instance std_msgs::Float32MultiArray :init))
    ((:mask_image __mask_image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _instance_nr (round __instance_nr))
   (setq _scores __scores)
   (setq _mask_image __mask_image)
   self)
  (:instance_nr
   (&optional __instance_nr)
   (if __instance_nr (setq _instance_nr __instance_nr)) _instance_nr)
  (:scores
   (&rest __scores)
   (if (keywordp (car __scores))
       (send* _scores __scores)
     (progn
       (if __scores (setq _scores (car __scores)))
       _scores)))
  (:mask_image
   (&rest __mask_image)
   (if (keywordp (car __mask_image))
       (send* _mask_image __mask_image)
     (progn
       (if __mask_image (setq _mask_image (car __mask_image)))
       _mask_image)))
  (:serialization-length
   ()
   (+
    ;; int32 _instance_nr
    4
    ;; std_msgs/Float32MultiArray _scores
    (send _scores :serialization-length)
    ;; sensor_msgs/Image _mask_image
    (send _mask_image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _instance_nr
       (write-long _instance_nr s)
     ;; std_msgs/Float32MultiArray _scores
       (send _scores :serialize s)
     ;; sensor_msgs/Image _mask_image
       (send _mask_image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _instance_nr
     (setq _instance_nr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/Float32MultiArray _scores
     (send _scores :deserialize buf ptr-) (incf ptr- (send _scores :serialization-length))
   ;; sensor_msgs/Image _mask_image
     (send _mask_image :deserialize buf ptr-) (incf ptr- (send _mask_image :serialization-length))
   ;;
   self)
  )

(setf (get image_segmentation_skill_msgs::MaskDefinition :md5sum-) "2956c47ca0a6c4fd0e5fb94e6e6dca48")
(setf (get image_segmentation_skill_msgs::MaskDefinition :datatype-) "image_segmentation_skill_msgs/MaskDefinition")
(setf (get image_segmentation_skill_msgs::MaskDefinition :definition-)
      "int32 instance_nr
std_msgs/Float32MultiArray scores
sensor_msgs/Image mask_image
================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :image_segmentation_skill_msgs/MaskDefinition "2956c47ca0a6c4fd0e5fb94e6e6dca48")


