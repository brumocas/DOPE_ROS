import rospy
from image_segmentation_skill_filter_base import ImageSegmentationFilterBase
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import cv2


class CropBoxFilter(ImageSegmentationFilterBase):

    def setupSkillConfigurationFromParameterServer(self, _node_handle, _private_node_handle, configuration_namespace_):
        rospy.logdebug("Setting CropBox filter configuration")
        self.node_handle_=_node_handle
        self.private_node_handle_=_private_node_handle

        self.width_min= rospy.get_param(configuration_namespace_ + "/width_min", 0)
        self.width_max= rospy.get_param(configuration_namespace_ + "/width_max", 0)
        self.height_min= rospy.get_param(configuration_namespace_ + "/height_min", 0)
        self.height_max= rospy.get_param(configuration_namespace_ + "/height_max", 0)

        #Yaml parameters

    def run(self, image):
        self.type_goal
        h, w = image.shape[:2]
        if (self.width_max > w):
            self.width_max = w
        if (self.height_max > h):
            self.height_max = h
        rospy.logdebug(str(self.height_max) + str(self.width_max))
        image[0:h,0:int(self.width_min)]=[0,0,0]
        image[0:h,int(self.width_max):w]=[0,0,0]
        image[0:int(self.height_min),int(self.width_min):int(self.width_max)]=[0,0,0]
        image[int(self.height_max):h,int(self.width_min):int(self.width_max)]=[0,0,0]
        self.filtered_image=image
        #cv2.imshow('image',self.filtered_image)
        #cv2.waitKey(0)
        rospy.logdebug("Crop box filter applied with success")