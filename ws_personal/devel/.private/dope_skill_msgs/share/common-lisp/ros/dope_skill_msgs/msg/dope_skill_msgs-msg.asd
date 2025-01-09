
(cl:in-package :asdf)

(defsystem "dope_skill_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DopeSkillAction" :depends-on ("_package_DopeSkillAction"))
    (:file "_package_DopeSkillAction" :depends-on ("_package"))
    (:file "DopeSkillActionFeedback" :depends-on ("_package_DopeSkillActionFeedback"))
    (:file "_package_DopeSkillActionFeedback" :depends-on ("_package"))
    (:file "DopeSkillActionGoal" :depends-on ("_package_DopeSkillActionGoal"))
    (:file "_package_DopeSkillActionGoal" :depends-on ("_package"))
    (:file "DopeSkillActionResult" :depends-on ("_package_DopeSkillActionResult"))
    (:file "_package_DopeSkillActionResult" :depends-on ("_package"))
    (:file "DopeSkillFeedback" :depends-on ("_package_DopeSkillFeedback"))
    (:file "_package_DopeSkillFeedback" :depends-on ("_package"))
    (:file "DopeSkillGoal" :depends-on ("_package_DopeSkillGoal"))
    (:file "_package_DopeSkillGoal" :depends-on ("_package"))
    (:file "DopeSkillResult" :depends-on ("_package_DopeSkillResult"))
    (:file "_package_DopeSkillResult" :depends-on ("_package"))
  ))