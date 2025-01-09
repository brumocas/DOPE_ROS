import rospy
from image_segmentation_weight_base import ImageSegmentationWeightBase

class ScoreEstimation(ImageSegmentationWeightBase):

    def setupSkillConfigurationFromParameterServer(self, _node_handle, _private_node_handle, configuration_namespace_):
        rospy.logdebug("Setting Score estimation configuration server")
        self.node_handle_=_node_handle
        self.private_node_handle_=_private_node_handle

        self.weight= rospy.get_param(configuration_namespace_ + "/weight", 0)

    def run(self, probability,instances):
        print("DEBUG")
        # for i in range(instances):
        #     self.weights.append(round(probability[i] * self.weight,2))
