#!/usr/bin/env python3

import rospy
from image_segmentation_skill_server import ImageSegmentationSkill

if __name__ == '__main__':
    rospy.init_node('image_segmentation_skill', log_level=rospy.DEBUG)
    skill= ImageSegmentationSkill()
    skill.setupSkillConfigurationFromParameterServer("image_segmentation_skill","~")
    skill.start()
    rospy.spin()