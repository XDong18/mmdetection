export CUDA_VISIBLE_DEVICES=4,9
export MKL_SERVICE_FORCE_INTEL=1
python report_info.py out/faster_rcnn_x101_32x4d_fpn_1x/latest.pth --out_name mmdetection-faster_rcnn_x101_32x4d_fpn-1x --config configs/faster_rcnn/configs/faster_rcnn/faster_rcnn_x101_32x4d_fpn_1x_bdd100k.py
python report_info.py c_out/retinanet_r50_fpn_1x/latest.pth --out_name mmdetection-retinanet_r50_fpn-1x --config configs/retinanet/retinanet_r50_fpn_1x_bdd100k.py
python report_info.py out/ssd_512_10x/ssd_512_10x-91845fef.pth --out_name mmdetection-ssd_512-10x --config configs/ssd/ssd512_bdd100k_10x.py
python report_info.py a_out/yolov3_608_273e/yolov3_608_273e-8c2596a1.pth --out_name mmdetection-yolov3_608-273e --config configs/yolo/yolov3_d53_mstrain-608_273e_bdd100k.py
