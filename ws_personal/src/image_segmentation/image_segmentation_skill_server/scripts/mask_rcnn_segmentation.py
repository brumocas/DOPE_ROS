import rospy
from image_segmentation_skill_base import ImageSegmentationBase

from mask_rcnn.config import ConfigRGB, ConfigRGBD
from mask_rcnn.model import MaskRCNN
# from mask_rcnn.utils import *
from mask_rcnn.visualize import *
import numpy as np
from pathlib import Path
from array import *

class MaskRcnnSegmentation(ImageSegmentationBase):

    def setupSkillConfigurationFromParameterServer(self, _node_handle, __private_node_handle, configuration_namespace_):
        rospy.logdebug("Deep Learning system: Setup Mask R-CNN configuration server")
        self.instances=0
        self.imagemask=0

        self.node_handle_=_node_handle
        self.private_node_handle_=__private_node_handle

        #Yaml parameters
        self.debug= rospy.get_param(_node_handle + "/debug_tools", False)
        self.model_path= rospy.get_param(_node_handle + "/model_path")
        self.improve_inference_model= self.model_path + "/tube_weight.h5"
        self.inference_resolution_width= rospy.get_param(_node_handle + "/output_resolution/width", 0)
        self.inference_resolution_height= rospy.get_param(_node_handle+ "/output_resolution/height", 0)
        return True


    def initiateConfig(self, neural_network_input,model):
        rospy.logdebug("Deep Learning system: Configurating Mask R-CNN neural network")
        config=eval(neural_network_input + "()")
        config.display()
        self.model_class = MaskRCNN(mode="inference", config=config, model_dir="")
        self.garbimage=np.zeros((config.IMAGE_MAX_DIM,config.IMAGE_MAX_DIM,3), 'uint8')
        self.model_class.load_weights(self.model_path + "/" + model + "_weight.h5", by_name=True)
        self.model_class.detect([self.garbimage], verbose=0)[0]
        self.model_type=model
        return True

    def loadSavedModel(self, model):
        self.model=self.model_path + "/" + model + "_weight.h5"
        self.model_name=model
        print(self.model)
        if (Path(self.model).is_file()):
            self.model_class.load_weights(self.model, by_name=True)
            return True
        else:
            rospy.logerr("The trained model named ( " + model + "_weight.h5" + ") does not exist")
            return False


    def runInference(self,image):
        rospy.logdebug("Deep Learning system: Executing Mask R-CNN inference")
        id=0
        probability_=[]
        h, w = image.shape[:2]
        inference_mask_id_=np.zeros([h,w], np.uint8)

        inference_mask=self.model_class.detect([image], verbose=0)[0]

        if(self.debug):
            if((self.model_name == "tube") or self.model_name == "knee_tube"):  label_object= "elbow flue pipe"
            elif((self.model_name == "triangle") or self.model_name == "triangle_bracket"): label_object= "triangular wall support"
            else: label_object= self.model_name

            labels=['BG', ("object: " + label_object + " | score: ")]

            display_instances(image, inference_mask['rois'], inference_mask['masks'], inference_mask['class_ids'],
                                    labels, inference_mask['scores'],
                                    title="Mask R-CNN Predictions")

        image_mask_=inference_mask['masks'].astype(np.uint8)
        roi=inference_mask['rois']
        scores= (inference_mask['scores'])
        instances_number_=image_mask_.shape[-1]


        for i in range(0, instances_number_):
            mask_xlenght = int((roi[i,3] - roi[i,1]))
            if (mask_xlenght < (w/1.4)):
                id +=1
                probability_.append(inference_mask['scores'][i])
                binary_inference_mask_ = (image_mask_[:,:,i] * id)
                id_mask= (binary_inference_mask_ == id)
                inference_mask_id_[id_mask] = binary_inference_mask_[id_mask]
            else:
                instances_number_ -=1

        self.instances= instances_number_
        self.imagemask= inference_mask_id_
        self.probability=probability_



        return True
