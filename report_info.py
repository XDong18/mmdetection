import argparse
import hashlib
import json
import os
from pycocotools.coco import COCO

def get_parser():
    parser = argparse.ArgumentParser(description='generate report files')
    parser.add_argument('model_path', help='model path')
    parser.add_argument('--out_name', help='the prefix of out files')
    parser.add_argument('--config', help='config file')

    return parser.parse_args()

def transform(annFile):
    # transform to bdd format
    coco = COCO(annFile + '_coco.json')
    imgIds = coco.getImgIds()
    imgIds = sorted(imgIds)
    catsIds = coco.getCatIds()
    cats = coco.loadCats(catsIds)
    nms = [cat['name'] for cat in cats]
    catsMap = dict(zip(coco.getCatIds(), nms))
    bdd_label = []
    for imgId in imgIds:
        img = coco.loadImgs(imgId)[0]
        annIds = coco.getAnnIds(imgIds=img['id'])
        anns = coco.loadAnns(annIds)
        det_dict = {}
        det_dict["name"] = img["file_name"]
        det_dict["attributes"] = {"weather": "undefined",
                                  "scene": "undefined",
                                  "timeofday": "undefined"}
        det_dict["labels"] = []
        for ann in anns:
            label = {"id": ann["id"],
                     "category": catsMap[ann["category_id"]],
                     "manualShape": True,
                     "manualAttributes": True,
                     "box2d": {
                       "x1": ann["bbox"][0],
                       "y1": ann["bbox"][1],
                       "x2": ann["bbox"][0] + ann["bbox"][2] - 1,
                       "y2": ann["bbox"][1] + ann["bbox"][3] - 1,
                     },
                     "score": ann["score"]
                     }
            det_dict["labels"].append(label)
        bdd_label.append(det_dict)
    return bdd_label

if __name__ == "__main__":
    args = get_parser()
    print(args.out_name)
    out_dir = 'report_dir'
    temp_dir = 'temp_dir'
    os.makedirs(out_dir, exist_ok=True)
    os.makedirs(temp_dir, exist_ok=True)

    # A: model .pth file
    sha256 = hashlib.sha256()
    with open(args.model_path, 'rb') as u:
        while True:
            buffer = u.read(8192)
            if len(buffer) == 0:
                break
            sha256.update(buffer)
    
    digest = sha256.hexdigest()[:8]
    model_out_name = 'bdd100k' + '-' + args.out_name + '-' + digest + '.pth'
    model_out_name = os.path.join(out_dir, model_out_name)

    with open(model_out_name, 'wb') as f:
        with open(args.model_path, 'rb') as u:
            model = u.read()
        f.write(model)
    
    # B: test result .json file
    test_json_name = 'bdd100k' + '-' + args.out_name + '-' + 'results' + '.json'
    test_json_name = os.path.join(out_dir, test_json_name)
    command = 'PORT=29503 ./tools/dist_test.sh '
    command += args.config + ' '
    command += args.model_path + ' '
    command += '2 '
    command += '--format-only '

    temp_result_file = os.path.join(temp_dir, args.out_name)
    command += '--eval-options ' + '"jsonfile_prefix=' + temp_result_file + '" '
    os.system(command)

    # convert temp result to coco format
    with open(temp_result_file + '.bbox.json') as f:
        temp_result_data = json.load(f)
    
    with open('/shared/xudongliu/bdd100k/labels/bdd100k_labels_images_det_coco_test.json') as f:
        new_result_data = json.load(f)
    
    new_result_data['annotations'] = []
    for i, instance in enumerate(temp_result_data):
        anno = {}
        anno['id'] = i + 1
        anno['image_id'] = instance['image_id']
        anno['category_id'] = instance['category_id']
        anno['bbox'] = instance['bbox']
        anno['area'] = float(instance['bbox'][2] * instance['bbox'][3])
        anno['score'] = instance['score']
        new_result_data['annotations'].append(anno)
    
    coco_temp_result_file = os.path.join(temp_dir, args.out_name + '_coco.json')
    with open(coco_temp_result_file, 'w') as f:
        json.dump(new_result_data, f)
    
    # convert coco format to bd format
    bdd_label = transform(coco_temp_result_file)
    with open(test_json_name, 'w') as outfile:
        json.dump(bdd_label, outfile)

    # C: save eval .json file
    eval_json_name = 'bdd100k' + '-' + args.out_name + '-' + 'eval' + '.json'
    eval_json_name = os.path.join(out_dir, eval_json_name)
    command = 'PORT=29503 ./tools/dist_test.sh '
    command += args.config + ' '
    command += args.model_path + ' '
    command += '2 '
    command += '--val_dataset '
    command += '--eval bbox --eval-options "classwise=True" '
    command += '--result_json ' + eval_json_name
    os.system(command)


    


