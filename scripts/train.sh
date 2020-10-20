export CUDA_VISIBLE_DEVICES=0,1,2,3
PORT=29501 ./tools/dist_train.sh configs/cascade_rcnn/cascade_rcnn_r50_fpn_1x_1280_bdd100k.py 4 --work-dir out/cascade_rcnn_r50_fpn_1x_1280