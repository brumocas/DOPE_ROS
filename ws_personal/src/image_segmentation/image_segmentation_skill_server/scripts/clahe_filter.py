import rospy
from image_segmentation_skill_filter_base import ImageSegmentationFilterBase

import cv2


class ClaheFiltering(ImageSegmentationFilterBase):

    def setupSkillConfigurationFromParameterServer(self, _node_handle, _private_node_handle, configuration_namespace_):
        rospy.logdebug("Setting Clahe filter configuration")
        self.node_handle_=_node_handle
        self.private_node_handle_=_private_node_handle

        self.clip_limit_= rospy.get_param(configuration_namespace_ + "clipLimit", 4)
        self.title_grid_size= rospy.get_param(configuration_namespace_ + "tileGridSize", (8,8))

        #Yaml parameters

    def run(self, image):
        image = cv2.cvtColor(image, cv2.COLOR_RGB2GRAY)
        clahe = cv2.createCLAHE(clipLimit=self.clip_limit_, tileGridSize=self.title_grid_size)
        image = clahe.apply(image)
        self.filtered_image = cv2.cvtColor(image, cv2.COLOR_GRAY2RGB)
        rospy.logdebug("Clahe filter applied with success")
