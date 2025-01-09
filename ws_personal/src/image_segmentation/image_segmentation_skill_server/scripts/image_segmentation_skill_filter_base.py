import rospy


class ImageSegmentationFilterBase:
    filtered_image=0

    def setupSkillConfigurationFromParameterServer(self, _node_handle, _private_node_handle,configuration_namespace_=0):
        rospy.logdebug("Setting filter configuration")

    def run(self,image=0):
        rospy.logdebug("Running filtering process")

    def sendgoal(self,goal=0):
        self.type_goal=goal

    def getImage(self):
        return self.filtered_image
