import rospy
# from image_segmentation_skill_server import ImageSegmentationSkill

import time
import numpy as np

class ImageSegmentationBase:
    imagemask=0

    def setupSkillConfigurationFromParameterServer(self, _node_handle, _private_node_handle,configuration_namespace_=0):
        print("Setting config")

    def initiateConfig(self=0):
        print("Configurating neural network")

    def loadSavedModel(self, model=0):
        print("Loading saved model")

    def runInference(self,image=0):
        print("Executing inference")

    def returnMask(self=0):
        return self.imagemask, self.instances, self.probability