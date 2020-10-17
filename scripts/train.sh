export CUDA_VISIBLE_DEVICES=1,2,3,4
PORT=29501 ./tools/dist_train.sh configs/cascade_rcnn/cascade_rcnn_r101_fpn_2x_bdd100k.py 4 --work-dir out/cascade_rcnn_r101_fpn_2x