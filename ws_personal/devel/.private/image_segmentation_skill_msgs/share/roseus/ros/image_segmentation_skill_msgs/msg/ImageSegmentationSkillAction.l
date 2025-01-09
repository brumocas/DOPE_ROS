;; Auto-generated. Do not edit!


(when (boundp 'image_segmentation_skill_msgs::ImageSegmentationSkillAction)
  (if (not (find-package "IMAGE_SEGMENTATION_SKILL_MSGS"))
    (make-package "IMAGE_SEGMENTATION_SKILL_MSGS"))
  (shadow 'ImageSegmentationSkillAction (find-package "IMAGE_SEGMENTATION_SKILL_MSGS")))
(unless (find-package "IMAGE_SEGMENTATION_SKILL_MSGS::IMAGESEGMENTATIONSKILLACTION")
  (make-package "IMAGE_SEGMENTATION_SKILL_MSGS::IMAGESEGMENTATIONSKILLACTION"))

(in-package "ROS")
;;//! \htmlinclude ImageSegmentationSkillAction.msg.html


(defclass image_segmentation_skill_msgs::ImageSegmentationSkillAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod image_segmentation_skill_msgs::ImageSegmentationSkillAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance image_segmentation_skill_msgs::ImageSegmentationSkillActionGoal :init))
    ((:action_result __action_result) (instance image_segmentation_skill_msgs::ImageSegmentationSkillActionResult :init))
    ((:action_feedback __action_feedback) (instance image_segmentation_skill_msgs::ImageSegmentationSkillActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; image_segmentation_skill_msgs/ImageSegmentationSkillActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; image_segmentation_skill_msgs/ImageSegmentationSkillActionResult _action_result
    (send _action_result :serialization-length)
    ;; image_segmentation_skill_msgs/ImageSegmentationSkillActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; image_segmentation_skill_msgs/ImageSegmentationSkillActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; image_segmentation_skill_msgs/ImageSegmentationSkillActionResult _action_result
       (send _action_result :serialize s)
     ;; image_segmentation_skill_msgs/ImageSegmentationSkillActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; image_segmentation_skill_msgs/ImageSegmentationSkillActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; image_segmentation_skill_msgs/ImageSegmentationSkillActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; image_segmentation_skill_msgs/ImageSegmentationSkillActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get image_segmentation_skill_msgs::ImageSegmentationSkillAction :md5sum-) "5f72008bff99b5d530ac11cab128e2ad")
(setf (get image_segmentation_skill_msgs::ImageSegmentationSkillAction :datatype-) "image_segmentation_skill_msgs/ImageSegmentationSkillAction")
(setf (get image_segmentation_skill_msgs::ImageSegmentationSkillAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

ImageSegmentationSkillActionGoal action_goal
ImageSegmentationSkillActionResult action_result
ImageSegmentationSkillActionFeedback action_feedback

================================================================================
MSG: image_segmentation_skill_msgs/ImageSegmentationSkillActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
ImageSegmentationSkillGoal goal

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

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: image_segmentation_skill_msgs/ImageSegmentationSkillGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#################
# Goal definition
string detection_model
uint32 operation_mode

================================================================================
MSG: image_segmentation_skill_msgs/ImageSegmentationSkillActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
ImageSegmentationSkillResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: image_segmentation_skill_msgs/ImageSegmentationSkillResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

###################
# Result definition

#sensor_msgs/PointCloud2 cloud
int32 percentage
string skillStatus
string outcome
image_segmentation_skill_msgs/MaskDefinition mask_pub

================================================================================
MSG: image_segmentation_skill_msgs/MaskDefinition
int32 instance_nr
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
MSG: image_segmentation_skill_msgs/ImageSegmentationSkillActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
ImageSegmentationSkillFeedback feedback

================================================================================
MSG: image_segmentation_skill_msgs/ImageSegmentationSkillFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

#####################
# Feedback definition
int32 percentage
string skillStatus

")



(provide :image_segmentation_skill_msgs/ImageSegmentationSkillAction "5f72008bff99b5d530ac11cab128e2ad")

