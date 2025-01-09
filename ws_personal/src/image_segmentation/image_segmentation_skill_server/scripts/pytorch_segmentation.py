from torch._functorch.partitioners import _size_of

from image_segmentation_skill_base import ImageSegmentationBase
from ultralytics.utils import DEFAULT_CFG, ops, torch_utils, IterableSimpleNamespace, yaml_load
from ultralytics.cfg import get_cfg
# from yolov8.cfg import get_cfg
from yolov8.inference import Inference
from image_segmentation_skill_base import ImageSegmentationBase
import rospy
import numpy as np
from pathlib import Path
import os, sys


class PytorchSegmentation(ImageSegmentationBase):

    def setupSkillConfigurationFromParameterServer(self, _node_handle, __private_node_handle, configuration_namespace_):
        rospy.logdebug("Deep Learning system: Setup Pytorch configuration server")

        self.node_handle_=_node_handle
        self.private_node_handle_=__private_node_handle

        #Yaml parameters
        self.debug= rospy.get_param(_node_handle + "/debug_tools", False)
        self.inference_resolution_width= rospy.get_param(_node_handle + "/output_resolution/width", 0)
        self.inference_resolution_height= rospy.get_param(_node_handle + "/output_resolution/height", 0)

        self.inf=Inference()
        return True

    def initiateConfig(self, neural_network_input,model):
        self.device = torch_utils.select_device("cpu")
        if(self.inference_resolution_width is None or self.inference_resolution_height is None):
            rospy.logerr("Set inference output resolution on the yaml config file")
            return False
        return True

    def loadSavedModel(self, model):
        rospy.logdebug(model)
        # weight=rospy.get_param(self.node_handle_ + "/" + model)
        model_path= rospy.get_param(self.node_handle_ + "/model_path")
        model_weight= model_path + "/" + model + "_weight.pt"

        if (Path(model_weight).is_file()):
            garbimage=np.zeros((self.inference_resolution_width,self.inference_resolution_height,3), 'uint8')

            args = dict(model=model_weight, source=garbimage)
            #cfg = IterableSimpleNamespace("/yolo/cfg/default.yaml")

            # cfg=DEFAULT_CFG

            script_directory = os.path.dirname(os.path.abspath(sys.argv[0]))
            DEFAULT_CFG_DICT = yaml_load(script_directory + "/yolov8/cfg/default.yaml")
            for k, v in DEFAULT_CFG_DICT.items():
                if isinstance(v, str) and v.lower() == 'none':
                    DEFAULT_CFG_DICT[k] = None
            DEFAULT_CFG_KEYS = DEFAULT_CFG_DICT.keys()
            DEFAULT_CFG = IterableSimpleNamespace(**DEFAULT_CFG_DICT)
            cfg=DEFAULT_CFG

            self.device = torch_utils.select_device("cpu")
            self.args = get_cfg(cfg, args)
            self.classes = self.args.classes
            self.cfg=cfg
            self.model=self.inf.setup_model(model_weight,self.device,self.args)
            return True
        else:
            rospy.logerr("The trained model named ( " + model + "_weight.pt" + ") does not exist")
            return False

    def runInference(self, image):
        self.hh, self.ww = image.shape[:2]
        rospy.logdebug('Infered Image (width: ' + str(self.ww) + ' | height: ' + str(self.hh) + ' | channels: ' + str(image.shape[2]) + ')')

        self.dataset=self.inf.setup_source(image)
        for batch in self.dataset:
            path, im0s, vid_cap, s = batch
            # path, im, im0s, vid_cap, s = batch
            # with self.dt[0]:
            # im = self.inf.preprocess(im)
            # if len(im.shape) == 3:
            #     im = im[None]  # expand for batch dim
            # preds = self.model(im) #, augment=self.args.augment)
            #
            # self.results = self.inf.postprocess(preds, im, im0s, self.classes)
            im = self.inf.preprocess(im0s, self.cfg.imgsz)

            preds = self.model(im) #, augment=self.args.augment)

            self.results = self.inf.postprocess(preds, im, im0s, self.classes)
            print(len(self.results))
            for i in range(len(im)):
                result = self.results[i]
                det, mask = result.boxes, result.masks
                im0 = (im0s[i])
                self.imagemask,self.instances, self.probability=self.inf.write_results(i, self.results, (im, im0))
                self.probability=self.probability.cpu().data.numpy()
        return True