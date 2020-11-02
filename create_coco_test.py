import json
import os.path as osp
import os

test_dir = '/shared/xudongliu/bdd100k/100k/test/'
val_json = '/shared/xudongliu/bdd100k/labels/bdd100k_labels_images_det_coco_val.json'
with open(val_json) as f:
    val_data = json.load(f)

file_list = sorted(os.listdir(test_dir))
json_data = {}
json_data['info'] = {}
json_data['images'] = []
json_data['licenses'] = val_data['licenses']
json_data['categories'] = val_data['categories']

for i, fn in enumerate(file_list):
    img_info = {}
    img_info['id'] = i
    img_info['width'] = 1280
    img_info['height'] = 720
    img_info['file_name'] = fn
    json_data['images'].append(img_info)

with open('/shared/xudongliu/bdd100k/labels/bdd100k_labels_images_det_coco_test.json', 'w') as f:
    json.dump(json_data, f)


