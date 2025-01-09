import rospy
import actionlib

from enum import Enum

from dope_skill_msgs.msg import DopeSkillAction, DopeSkillResult, DopeSkillFeedback

class OPERATION_MODE(Enum):
    SETUP=1
    PRE_LOAD=2
    INFERENCE=3
    FULL_PROCESS=0
    UNLOAD=4

class DopeSkill(object):

    def __init__(self, action_name='DopeSkill'):

        self.action_name = action_name
        self.dope_skill_server = actionlib.SimpleActionServer(self.action_name, DopeSkillAction, self.execute_skill, False)
        self.dope_skill_server.start()
        self.percentage = 0
        self.outcomes = ["succeeded", "aborted", "preempted"]

    def execute_skill(self, goal):
        '''
        The execution of the skill should be coded here.
        In order to save you time, the methods check_preemption(), feedback(), success() and aborted() should be used.
        The check_preemption() method should be called periodically.
        The variable self.percentage should be updated when there is an evolution in the execution of the skill.
        feedback() method should be called when there is an evolution in the execution of the skill.
        '''
        
        rospy.loginfo(goal)
        pass

    def feedback(self, status=None):
        feedback = DopeSkillFeedback()
        feedback.percentage = self.percentage
        feedback.skillStatus = status if status else 'DopeSkill Executing'
        self.dope_skill_server.publish_feedback(feedback)
        self.log_info(feedback)

    def success(self, status=None, outcome='succeeded'):
        result_status = status if status else 'DopeSkill executed successfully'
        result = self.result_constructor(percentage=100, status=result_status, outcome=outcome)
        self.dope_skill_server.set_succeeded(result, result.skillStatus)

    def aborted(self, status=None, outcome='aborted'):
        result_status = status if status else 'DopeSkill aborted'
        result = self.result_constructor(status=result_status, outcome=outcome)
        self.dope_skill_server.set_aborted(result, result.skillStatus)

    def check_preemption(self):
        if self.dope_skill_server.is_preempt_requested():
            result = self.result_constructor(status='DopeSkill Preempted', outcome='preempted')
            self.dope_skill_server.set_preempted(result, result.skillStatus)
            return True
        return False

    def result_constructor(self, status, percentage=None, outcome=''):
        result = DopeSkillResult()
        result.percentage = percentage if percentage else self.percentage
        result.skillStatus = status
        result.outcome = outcome
        self.log_info(result)
        return result

    @staticmethod
    def log_info(status):
        info = '[DopeSkill] Percentage: ' + str(status.percentage) + '%. Status: ' + status.skillStatus
        rospy.loginfo(info)
        return info
