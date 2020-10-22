export CUDA_VISIBLE_DEVICES=0,1,2,3
PORT=29501 configs/faster_rcnn/faster_rcnn_r50_fpn_1x_bdd100k.py 4 --work-dir out/faster_rcnn_r50_fpn_1x