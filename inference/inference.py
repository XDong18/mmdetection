from mmdet.apis import init_detector, inference_detector
import mmcv
import os
import tqdm

config_file = 'configs/cascade_rcnn/cascade_rcnn_r50_fpn_1x_bdd100k.py'
checkpoint_file = 'out/cascade_rcnn_r50_fpn_1x/cascade_rcnn_r50_fpn_1x-b915cc22.pth'

# build the model from a config file and a checkpoint file
model = init_detector(config_file, checkpoint_file, device='cuda:4') # TODO

# test a single image and show the results
val_dir = '/shared/xudongliu/bdd100k/100k/val'
img_list = os.listdir(val_dir)

out_dir = 'infer_img/val/cascade_rcnn_r50_fpn_1x' # TODO change out dir
os.makedirs(out_dir)
# img = 'test.jpg'  # or img = mmcv.imread(img), which will only load it once

for img in tqdm(img_list):
    img_path = os.path.join(val_dir, img)
    result = inference_detector(model, img_path)
    out_path = os.path.join(out_dir, img)
    model.show_result(img, result, out_file=out_path)
