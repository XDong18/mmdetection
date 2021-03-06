from mmdet.apis import init_detector, inference_detector
import mmcv
import os
from tqdm import tqdm

model_name = 'fcos_r101_caffe_fpn_gn-head_4x4_1x'
config_file = 'configs/fcos/fcos_r101_caffe_fpn_gn-head_4x4_1x_bdd100k.py'
checkpoint_file = 'out/fcos_r101_caffe_fpn_gn-head_4x4_1x/fcos_r101_caffe_fpn_gn-head_4x4_1x-64cf2e57.pth'

# build the model from a config file and a checkpoint file
model = init_detector(config_file, checkpoint_file, device='cuda:7') # TODO

# test a single image and show the results
val_dir = '/shared/xudongliu/bdd100k/100k/val'
img_list = sorted(os.listdir(val_dir))[:1000]

out_dir = 'infer_img/val/' + model_name # TODO change out dir
if not os.path.exists(out_dir):
    os.makedirs(out_dir)
# img = 'test.jpg'  # or img = mmcv.imread(img), which will only load it once

for img in tqdm(img_list):
    img_path = os.path.join(val_dir, img)
    result = inference_detector(model, img_path)
    out_path = os.path.join(out_dir, img)
    model.show_result(img_path, result, out_file=out_path)

# make html file
img_dir = out_dir
img_list = sorted(os.listdir(img_dir))[:1000]
out_fn = 'infer_img/' + model_name + '.html'
with open (out_fn, 'w') as f:
    f.write('<html>\n')
    f.write('<body>\n')
    f.write('<h1>' + model_name + '</h1>\n')

    for img in tqdm(img_list):
        new_line = "<img src='" + os.path.join('val/' + model_name, img) + "'>\n"
        f.write(new_line)
    # f.write("<img src='" + "test.jpg" + "'>\n")
    f.write('</body>\n')
    f.write('</html>\n')
