import rospy


class ImageSegmentationWeightBase:
    weights=[]
    probability=0

    def setupSkillConfigurationFromParameterServer(self, _node_handle, _private_node_handle,configuration_namespace_=0):
        rospy.logdebug("Setting weight configuration server")

    def run(self, probability,instances):
        rospy.logdebug("Running estimation process")

    def getWeight(self):
        return self.weights