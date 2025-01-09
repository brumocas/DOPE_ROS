#!/usr/bin/env python3
import numpy as np
import rospy
import actionlib
import image_segmentation_skill_msgs.msg
# from mask_rcnn_segmentation import MaskRcnnSegmentation
# from pytorch_segmentation import PytorchSegmentation
from image_segmentation_skill_base import ImageSegmentationBase
from image_segmentation_skill_filter_base import ImageSegmentationFilterBase
from image_segmentation_weight_base import ImageSegmentationWeightBase
from score_selection import ScoreEstimation
from clahe_filter import ClaheFiltering
from cropbox_filter import CropBoxFilter
import cv2

from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import os

import skimage.draw

from enum import Enum

class OPERATION_MODE(Enum):
    SETUP=1
    PRE_LOAD=2
    INFERENCE=3
    FULL_PROCESS=0
    UNLOAD=4


class ImageSegmentationSkill:

    """
    Start Action Server
    """
    def start(self):
        rospy.logdebug("Initialized Image Segmentation node")
        self._feedback = image_segmentation_skill_msgs.msg.ImageSegmentationSkillFeedback()
        self._result = image_segmentation_skill_msgs.msg.ImageSegmentationSkillResult()
        self.action_server_ = actionlib.SimpleActionServer(self.action_server_name_, image_segmentation_skill_msgs.msg.ImageSegmentationSkillAction,self.executeCB, auto_start = False)
        self.action_server_.start()

    """ 
    Goal Success
    """
    def setSuceeded(self, outcome = "suceeded"):
        rospy.logdebug("Goal: Succeeded")
        self._result.percentage= 100
        self._result.skillStatus= self.action_server_name_ + ": Succeeded"
        self._result.outcome= outcome
        self.action_server_.set_succeeded(self._result)

    """ 
    Goal Abort
    """
    def setAborted(self, outcome = "aborted"):
        rospy.logdebug("Goal: Aborted")
        if not (self.model_type): rospy.loginfo("Select type of model to detect")
        self._result.percentage= 0
        self._result.skillStatus= self.action_server_name_ + ": Aborted"
        self._result.outcome= outcome
        self.action_server_.set_succeeded(self._result)

    def noInstances(self, outcome = "noinstances"):
        rospy.logdebug("Goal: Found 0 instances")
        if not (self.model_type): rospy.loginfo("Select type of model to detect")
        self._result.percentage= 0
        self._result.skillStatus= self.action_server_name_ + ": No instances"
        self._result.outcome= outcome
        self.action_server_.set_succeeded(self._result)

    """ 
    Goal Feedback
    """
    def feedback(self, percentage):
        self._feedback.percentage = percentage
        self._feedback.skillStatus= self.action_server_name_ + ": Executing"
        self.action_server_.publish_feedback(self._feedback)


    """ 
    Configure parameter server + subscribers + publishers
    """
    def setupSkillConfigurationFromParameterServer(self, _node_handle, _private_node_handle):
        rospy.logdebug("Setting Image Segmentation configuration server")
        self.node_handle_= _node_handle
        self.private_node_handle_= _private_node_handle
        self.setup=0
        self.loaded_model=""

        self.action_server_name_= rospy.get_param(self.node_handle_ + "/action_server_name")
        self.image_subscriber = rospy.get_param(self.node_handle_ + "/image_subscriber", "/friday/phoxi_camera/image_raw")
        self.image_publisher = rospy.get_param(self.node_handle_ + "/image_publisher", "/friday/segmented_image")
        self.mask_publisher = rospy.Publisher(self.image_publisher, image_segmentation_skill_msgs.msg.MaskDefinition ,queue_size=10,latch=True)
        self.output_res_w= rospy.get_param(self.node_handle_ + "/output_resolution/width", 2064)
        self.output_res_h= rospy.get_param(self.node_handle_ + "/output_resolution/height", 1544)
        device= rospy.get_param(self.node_handle_ +"/device_GPU", False)
        self.instances=0

        rospy.logwarn("Device to execute inference: GPU")

        if not (device):
            rospy.logwarn("Device to execute inference: CPU")
            os.environ['CUDA_VISIBLE_DEVICES'] = '-1'

        return True

    """ 
    Goal CallBack
    """
    def executeCB(self, goal):
        self.model_type= goal.detection_model
        if not (self.model_type and (self.executeProcess(goal.operation_mode))):
            self.setAborted()
        else:
            if(self.instances==0):
                self.noInstances()
            else:
                self.setSuceeded()

    """ 
    Execute the full process
    """
    def executeProcess(self, goal):
        if(goal == OPERATION_MODE.SETUP.value):
            rospy.logdebug("Executing Operation: Setup" )
            return (self.executeSetupProcess())
        elif(goal == OPERATION_MODE.FULL_PROCESS.value):
            rospy.logdebug("Executing Operation: Full-Process" )
            return (self.executeFullProcess())
        elif(goal == OPERATION_MODE.PRE_LOAD.value):
            rospy.logdebug("Executing Operation: Pre-load" )
            return (self.executePreLoad())
        elif(goal == OPERATION_MODE.INFERENCE.value):
            rospy.logdebug("Executing Operation: Inference" )
            return (self.executeInference())
        elif(goal == OPERATION_MODE.UNLOAD.value):
            rospy.logdebug("Executing Operation: Unload" )
            return (self.executeUnload())
        else:
            rospy.logerr("Loaded Data Not Founded!")
            return False
        return True

    """ 
    Subscribe to the rgb image
    """
    def imageSubsriber(self):
        rospy.logdebug("Subscribing To 2d Image")
        image_msg=rospy.wait_for_message(self.image_subscriber, Image, timeout=35)
        self.image = CvBridge().imgmsg_to_cv2(image_msg, "rgb8")
        self.hh, self.ww = self.image.shape[:2]

        rospy.logdebug('Image loaded (width: ' + str(self.ww) + ' | height: ' + str(self.hh) + ' | channels: ' + str(self.image.shape[2]) + ')')
        return True

    """ 
    Subscribe to the depth image
    """
    def depthImageSubsriber(self):
        return True

    """ 
    Execute the direct process: load the model and inference
    """
    def executeSetupProcess(self):
        if not (self.setup):
            if not (self.selectNeuralNetwork()
                    and self.SelectEstimationPipeline()
                    and self.initializeConfig()
                    and self.imageProcessing()):
                return False
            return True
        rospy.logdebug("Setup already executed")
        return True

    def executeInference(self):
        start_time = rospy.Time.now()

        if not (self.setup):
            rospy.logerr("Neural network setup not executed")
            return False
        if(self.model_type != self.loaded_model):
            rospy.logerr("Load The Right Model Before Inference")
            return False
        if not (self.imageSubsriber()
                and self.runFilteringProcess()
                and self.imageSegmentation()
                and self.runEstimationPipeline()
                and self.publishImageMask()):
            return False
        end_time = rospy.Time.now()
        elapsed = end_time - start_time
        # rospy.logdebug("Elapsed time: %.3f seconds or %.3f milliseconds", elapsed.to_sec())
        return True

    def executeUnload(self):
        # tf.keras.backend.clear_session()
        return True

    def executePreLoad(self):
        if not (self.setup):
            rospy.logerr("Neural network setup not executed")
            return False
        elif not (self.loadWeightedModel()):
            return False
        return True

    """ 
    Execute the entire process
    """
    def executeFullProcess(self):
        if not (self.setup):
            if not (self.selectNeuralNetwork()
                    and self.SelectEstimationPipeline()
                    and self.initializeConfig()
                    and self.imageProcessing()
                    and self.loadWeightedModel()
                    and self.imageSubsriber()
                    and self.runFilteringProcess()
                    and self.imageSegmentation()
                    and self.runEstimationPipeline()
                    and self.publishImageMask()):
                return False
        # if(self.model_type != self.loaded_model):
        #     rospy.logerr("Load The Right Model Before Inference")
        #     return False
        # if not (self.imageSubsriber()
        #         and self.runFilteringProcess()
        #         and self.imageSegmentation()
        #         and self.runEstimationPipeline()
        #         and self.publishImageMask()):
        #     return False
        # rospy.logdebug("Setup already executed")
        return True

    """ 
    Select the right neural network to segment image
    """
    def selectNeuralNetwork(self):
        #Read Xml file to select the neural network, only one network is selected
        configuration_namespace=(rospy.get_namespace() + "neural_networks/pipeline/")
        pipeline= rospy.get_param(configuration_namespace)

        xml_pipeline=list(pipeline)
        for i in range(len(pipeline)):
            if(xml_pipeline[i].startswith("1")):
                self.neural_network_data_type= rospy.get_param(configuration_namespace + xml_pipeline[i] + "/data_type")
                if (xml_pipeline[i] == "1_mask_rcnn"):
                    from mask_rcnn_segmentation import MaskRcnnSegmentation
                    rospy.logdebug("Deep neural network selected: Mask R-CNN")
                    self.neural_network_class =MaskRcnnSegmentation()
                if (xml_pipeline[i] == "1_yolov7"):
                    from pytorch_segmentation import PytorchSegmentation
                    rospy.logdebug("Deep neural network selected: Yolov7")
                    self.neural_network_class = PytorchSegmentation()
                self.neural_network_name=xml_pipeline[i]
        self.neural_network_namespace=configuration_namespace
        return True

    def SelectEstimationPipeline(self):
        #Read Xml file to select the neural network, only one network is selected
        configuration_namespace=(rospy.get_namespace() + "estimation_pipeline/pipeline/")
        pipeline= rospy.get_param(configuration_namespace)
        xml_pipeline=list(pipeline)
        rospy.loginfo(str(len(pipeline)))

        self.estimation_pipeline=[]

        sorted_list = sorted(xml_pipeline, key=lambda x: x.split("_")[0])

        for i in range(len(pipeline)):
                if ("occlusion" in sorted_list[i]):
                    rospy.logdebug("Selecting metric: Occlusion")
                if ("conf_scores" in sorted_list[i]):
                    rospy.logdebug("Selecting metric: Scores")
                    self.estimation_pipeline.append(ScoreEstimation())

                self.estimation_pipeline[i].setupSkillConfigurationFromParameterServer(self.node_handle_,self.private_node_handle_,(configuration_namespace + sorted_list[i]))
        # self.estimation_pipeline_namespace=configuration_namespace
        return True

    def imageProcessing(self):
        rospy.loginfo("Image processing setup")
        #Read Xml file to select the neural network, only one network is selected
        configuration_namespace=(rospy.get_namespace() + "image_processing/pipeline/")
        pipeline= rospy.get_param(configuration_namespace)
        xml_pipeline=list(pipeline)
        rospy.loginfo(str(len(pipeline)))

        self.filter_pipeline=[]

        sorted_list = sorted(xml_pipeline, key=lambda x: x.split("_")[0])
        for i in range(len(pipeline)):
            print(sorted_list[i])
            print("{}")
            #     print(xml_pipeline[i])
            if("clahe" in sorted_list[i]):
                rospy.logdebug("Applying Clahe filter")
                self.filter_pipeline.append(ClaheFiltering())
                # self.filter_pipeline.insert(0,ClaheFiltering())
            elif("denoise" in sorted_list[i]):
                rospy.logdebug("Applying Denoise filter")
            elif("crop_box" in sorted_list[i]):
                rospy.logdebug("Applying CropBox filter")
                self.filter_pipeline.append(CropBoxFilter())

            self.filter_pipeline[i].setupSkillConfigurationFromParameterServer(self.node_handle_,self.private_node_handle_, (configuration_namespace + sorted_list[i]))

        return True

    """ 
    Load save model from neural network chosen
    """
    def loadWeightedModel(self):
        if(self.model_type != self.loaded_model):
            self.neural_network_class.loadSavedModel(self.model_type)
        self.loaded_model=self.model_type
        return True

    """ 
    Load neural network config with the right data type
    """
    def initializeConfig(self):
        self.neural_network_class.setupSkillConfigurationFromParameterServer(self.node_handle_,self.private_node_handle_,self.neural_network_name)
        self.neural_network_class.initiateConfig(self.neural_network_data_type, self.model_type)
        self.setup=1
        return True

    """ 
    Segment image, returning the instances and the 2D mask as mask_segmentation and instances
    """
    def imageSegmentation(self):
        rospy.logdebug("Executing Deep learning process")
        self.neural_network_class.runInference(self.image)
        self.mask_segmentation , self.instances, self.probability = self.neural_network_class.returnMask()
        # rospy.logdebug("Instance scores: " + self.probability)
        if (self.mask_segmentation.shape[:2] != (self.output_res_h,self.output_res_w)):
            self.resize()
        return True

    def runEstimationPipeline(self):
        for i in range(len(self.estimation_pipeline)):
            self.estimation_pipeline[i].run(self.probability,self.instances)
            self.weight=self.estimation_pipeline[i].getWeight()
        return True

    def resize(self):
        rospy.logdebug("Resizing image from: (" + str(self.mask_segmentation.shape[0]) + ", " + str(self.mask_segmentation.shape[1]) + "), to: (" + str(self.output_res_h) + ", " + str(self.output_res_w) + " )" )
        self.mask_segmentation = cv2.resize(self.mask_segmentation, (self.output_res_w, self.output_res_h), interpolation = cv2.INTER_AREA)

        if(self.mask_segmentation is None):
            rospy.logerr("Cant resize the image to: (" << str(self.output_res_w) << ", " << str(self.output_res_h) << ")")
            return False
        return True

    def runFilteringProcess(self):
        for i in range(len(self.filter_pipeline)):
            self.filter_pipeline[i].sendgoal(self.model_type)
            self.filter_pipeline[i].run(self.image)
            self.image=self.filter_pipeline[i].getImage()
        return True

    """ 
    Publish image segmentation
    """
    def publishImageMask(self):
        rospy.logdebug("Publishing segmented message")
        print(self.weight)
        msg = image_segmentation_skill_msgs.msg.MaskDefinition()
        msg.instance_nr = self.instances
        msg.scores.layout.data_offset = 0
        msg.scores.data = self.weight
        # cv2.imshow('image',(self.mask_segmentation[:,:]*25))
        # cv2.waitKey(0)
        msg.mask_image = CvBridge().cv2_to_imgmsg(self.mask_segmentation)  #self.mask_segmentation[:,:]*25
        self.mask_publisher.publish(msg)
        rospy.logdebug("Instance number: " + str(self.instances))
        # cv2.imwrite("/home/artur/Videos/img_test.png", self.mask_segmentation*15)
        # msg.mask_image = CvBridge().cv2_to_imgmsg(self.mask_segmentation)
        return True

