from ultralytics.nn.autobackend import AutoBackend
from ultralytics.data.build import load_inference_source
from ultralytics.engine.results import Results
from ultralytics.utils import DEFAULT_CFG, ops, torch_utils
from ultralytics.data.augment import LetterBox
# from yolov8.build import load_inference_source
# from yolov8.results import Results
# from yolov8.utils import DEFAULT_CFG, ops, torch_utils
import numpy as np
import sys
import PIL
import torch

class Inference(object):

    def __int__(self):
        print("Inference")

    def postprocess(self, preds, img, orig_img, classes=None):
        # TODO: filter by classes
        p = ops.non_max_suppression(preds[0],
                                    self.args.conf,
                                    self.args.iou,
                                    agnostic=self.args.agnostic_nms,
                                    max_det=self.args.max_det,
                                    nc=len(self.model.names),
                                    classes=self.args.classes)
        results = []
        proto = preds[1][-1]
        for i, pred in enumerate(p):
            orig_img = orig_img[i] if isinstance(orig_img, list) else orig_img
            # shape = orig_img[i].shape if isinstance(orig_img, list) else orig_img.shape
            if not len(pred):
                # results.append(Results(boxes=pred[:, :6], orig_shape=shape[:2]))  # save empty boxes
                results.append(Results(orig_img=orig_img, path="", names=self.model.names, boxes=pred[:, :6]))
                continue
            if self.args.retina_masks:
                if not isinstance(orig_img, torch.Tensor):
                    pred[:, :4] = ops.scale_boxes(img.shape[2:], pred[:, :4], orig_img.shape)
                masks = ops.process_mask_native(proto[i], pred[:, 6:], pred[:, :4], orig_img.shape[:2])
            else:
                masks = ops.process_mask(proto[i], pred[:, 6:], pred[:, :4], img.shape[2:], upsample=True)  # HWC
                if not isinstance(orig_img, torch.Tensor):
                    pred[:, :4] = ops.scale_boxes(img.shape[2:], pred[:, :4], orig_img.shape)
            # masks = ops.process_mask(proto[i], pred[:, 6:], pred[:, :4], img.shape[2:], upsample=True)  # HWC
            # pred[:, :4] = ops.scale_boxes(img.shape[2:], pred[:, :4], shape).round()
            # results.append(Results(boxes=pred[:, :6], masks=masks,)
            results.append(Results(orig_img=orig_img, path="", names=self.model.names, boxes=pred[:, :6], masks=masks))
        return results

    def write_results(self, idx, results, batch):
        im, im0 = batch
        # inference_mask_id_=numpy.zeros([DEFAULT_CFG.weight_width,DEFAULT_CFG.weight_height], numpy.uint8)
        if len(im.shape) == 3:
            im = im[None]  # expand for batch dim

        result = results[idx]
        det, mask = result.boxes, result.masks  # getting tensors TODO: mask mask,box inherit for tensor
        if (mask is not None):
            inference_mask_id_=np.zeros([result.masks.shape[1],result.masks.shape[2]], np.uint8)
            instances=mask.data.shape[0]
            instances_number_=instances
            prob=det.conf.squeeze()
            id=0
            for i in range(0, instances_number_):
                id +=1
                binary_inference_mask_ = np.array((mask.data[i].cpu().numpy())*id, dtype=np.uint8)
                id_mask= (binary_inference_mask_ == id)
                inference_mask_id_[id_mask] = binary_inference_mask_[id_mask]
        else:
            inference_mask_id_=np.zeros([480,640], np.uint8)
            instances=0; prob=torch.Tensor([0])
        return inference_mask_id_, instances, prob


    def setup_model(self, model, device,args):
        self.device= device
        self.args=args
        self.model = AutoBackend(model, device=device, dnn=args.dnn, data=args.data, fp16=args.half)
        self.model.eval()
        return self.model

    def setup_source(self, source):
        self.dataset = load_inference_source(source=source, imgsz=DEFAULT_CFG.imgsz)
        return self.dataset
    def pre_transform(self, im, imgsz):
        """
        Pre-transform input image before inference.

        Args:
            im (List(np.ndarray)): (N, 3, h, w) for tensor, [(h, w, 3) x N] for list.

        Returns:
            (list): A list of transformed images.
        """
        same_shapes = all(x.shape == im[0].shape for x in im)
        auto = same_shapes and self.model.pt
        return [LetterBox(imgsz, auto=auto, stride=self.model.stride)(image=x) for x in im]
    def preprocess(self, im, imgsz):
        # img = torch.from_numpy(img).to(self.model.device)
        # img = img.half() if self.model.fp16 else img.float()  # uint8 to fp16/32
        # img /= 255  # 0 - 255 to 0.0 - 1.0
        # return img
        not_tensor = not isinstance(im, torch.Tensor)
        if not_tensor:
            im = np.stack(self.pre_transform(im, imgsz))
            im = im[..., ::-1].transpose((0, 3, 1, 2))  # BGR to RGB, BHWC to BCHW, (n, 3, h, w)
            im = np.ascontiguousarray(im)  # contiguous
            im = torch.from_numpy(im)

        img = im.to(self.device)
        img = img.half() if self.model.fp16 else img.float()  # uint8 to fp16/32
        if not_tensor:
            img /= 255  # 0 - 255 to 0.0 - 1.0
        return img