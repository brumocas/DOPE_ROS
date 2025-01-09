;; Auto-generated. Do not edit!


(when (boundp 'dope_skill_msgs::DopeSkillGoal)
  (if (not (find-package "DOPE_SKILL_MSGS"))
    (make-package "DOPE_SKILL_MSGS"))
  (shadow 'DopeSkillGoal (find-package "DOPE_SKILL_MSGS")))
(unless (find-package "DOPE_SKILL_MSGS::DOPESKILLGOAL")
  (make-package "DOPE_SKILL_MSGS::DOPESKILLGOAL"))

(in-package "ROS")
;;//! \htmlinclude DopeSkillGoal.msg.html


(defclass dope_skill_msgs::DopeSkillGoal
  :super ros::object
  :slots (_operation_mode _model_name _object_name ))

(defmethod dope_skill_msgs::DopeSkillGoal
  (:init
   (&key
    ((:operation_mode __operation_mode) 0)
    ((:model_name __model_name) "")
    ((:object_name __object_name) "")
    )
   (send-super :init)
   (setq _operation_mode (round __operation_mode))
   (setq _model_name (string __model_name))
   (setq _object_name (string __object_name))
   self)
  (:operation_mode
   (&optional __operation_mode)
   (if __operation_mode (setq _operation_mode __operation_mode)) _operation_mode)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:serialization-length
   ()
   (+
    ;; int32 _operation_mode
    4
    ;; string _model_name
    4 (length _model_name)
    ;; string _object_name
    4 (length _object_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _operation_mode
       (write-long _operation_mode s)
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _operation_mode
     (setq _operation_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dope_skill_msgs::DopeSkillGoal :md5sum-) "2397551434b69a269cde975c677c8bb4")
(setf (get dope_skill_msgs::DopeSkillGoal :datatype-) "dope_skill_msgs/DopeSkillGoal")
(setf (get dope_skill_msgs::DopeSkillGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
int32 operation_mode
string model_name
string object_name

")



(provide :dope_skill_msgs/DopeSkillGoal "2397551434b69a269cde975c677c8bb4")

