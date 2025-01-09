#!/usr/bin/python3

import rospy
import traceback
from dope_skill_server.dope_skill_class import DopeSkill


if __name__ == "__main__":

    rospy.init_node('dope_skill')

    try:
        actionName = rospy.get_param('~action_name')
    except Exception as e:
        raise KeyError('Unable to access ROS parameter server for ' + str(actionName))

    try:
        DopeSkill = DopeSkill(actionName)
        rospy.spin()

    except Exception as e:
        rospy.logerr('[DopeSkill] Error: %s', str(e))
        rospy.logdebug(traceback.format_exc())
        quit()
