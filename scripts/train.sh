export CUDA_VISIBLE_DEVICES=0,1,2,3
PORT=29501 ./tools/dist_train.sh configs/faster_rcnn/faster_rcnn_r101_fpn_1x_bdd100k.py 4 --work-dir out/configs/faster_rcnn/faster_rcnn_r101_fpn_1x_4x4bdd100k