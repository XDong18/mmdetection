export CUDA_VISIBLE_DEVICES=4,5,6,7
PORT=29501 ./tools/dist_train.sh configs/faster_rcnn/faster_rcnn_r50_fpn_1x_bdd100k.py 4 --work-dir out/faster_rcnn_r50_fpn_1x