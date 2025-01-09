#!/usr/bin/env python

"""Tests for the Dope Skill Class"""

from unittest import TestCase
from mock import patch, MagicMock
import rospy
import actionlib
import time

from dope_skill_msgs.msg import DopeSkillAction, DopeSkillResult, DopeSkillFeedback, DopeSkillGoal
from dope_skill_server.dope_skill_class import DopeSkill


class IntegrationTestDopeSkillServer(TestCase):
    """Test class for the Dope Skill Class"""

    @classmethod
    def setUpClass(cls):

        rospy.init_node('dope_skill_class_test')

    def test_connection_to_server(self):

        client = actionlib.SimpleActionClient('DopeSkill', DopeSkillAction)
        result = client.wait_for_server()

        self.assertTrue(result)

    def test_execute_skill(self):

        goal = None

        client = actionlib.SimpleActionClient('DopeSkill', DopeSkillAction)
        client.wait_for_server()

        client.send_goal(goal)
        result = client.wait_for_result(rospy.Duration.from_sec(20.0))

        self.assertTrue(result)

if __name__ == '__main__':
    import rostest

    rostest.rosrun('dope_skill_server', 'dope_skill_server_integration_tests', IntegrationTestDopeSkillServer)
