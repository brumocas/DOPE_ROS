
(cl:in-package :asdf)

(defsystem "image_segmentation_skill_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImageSegmentationSkillAction" :depends-on ("_package_ImageSegmentationSkillAction"))
    (:file "_package_ImageSegmentationSkillAction" :depends-on ("_package"))
    (:file "ImageSegmentationSkillActionFeedback" :depends-on ("_package_ImageSegmentationSkillActionFeedback"))
    (:file "_package_ImageSegmentationSkillActionFeedback" :depends-on ("_package"))
    (:file "ImageSegmentationSkillActionGoal" :depends-on ("_package_ImageSegmentationSkillActionGoal"))
    (:file "_package_ImageSegmentationSkillActionGoal" :depends-on ("_package"))
    (:file "ImageSegmentationSkillActionResult" :depends-on ("_package_ImageSegmentationSkillActionResult"))
    (:file "_package_ImageSegmentationSkillActionResult" :depends-on ("_package"))
    (:file "ImageSegmentationSkillFeedback" :depends-on ("_package_ImageSegmentationSkillFeedback"))
    (:file "_package_ImageSegmentationSkillFeedback" :depends-on ("_package"))
    (:file "ImageSegmentationSkillGoal" :depends-on ("_package_ImageSegmentationSkillGoal"))
    (:file "_package_ImageSegmentationSkillGoal" :depends-on ("_package"))
    (:file "ImageSegmentationSkillResult" :depends-on ("_package_ImageSegmentationSkillResult"))
    (:file "_package_ImageSegmentationSkillResult" :depends-on ("_package"))
    (:file "MaskDefinition" :depends-on ("_package_MaskDefinition"))
    (:file "_package_MaskDefinition" :depends-on ("_package"))
  ))