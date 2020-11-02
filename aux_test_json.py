import json
import argparse
import copy

def get_parser():
    parser = argparse.ArgumentParser(description='aux test json')
    parser.add_argument('file-name', help='json file name')
    return parser.parse_args()

if __name__ == "__main__":
    args = get_parser()
    with open(args.file_name + '.bbox.json') as f:
        data = json.load(f)
    
    with open('/shared/xudongliu/bdd100k/labels/bdd100k_labels_images_det_coco_test.json') as f:
        new_data = json.load(f)
    
    new_data['annotations'] = []
    for i, instance in enumerate(data):
        anno = {}
        anno['id'] = i + 1
        anno['image_id'] = instance['image_id']
        anno['category_id'] = instance['category_id']
        anno['bbox'] = instance['bbox']
        anno['area'] = float(instance['bbox'][2] * instance['bbox'][3])
        anno['score'] = instance['score']
        new_data['annotations'].append(anno)
    
    with open(args.file_name + '_coco.json', 'w') as f:
        json.dump(new_data, f)

