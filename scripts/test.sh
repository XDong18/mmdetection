export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/cascade_rcnn/cascade_rcnn_r101_fpn_1x_bdd100k.py \
    out/cascade_rcnn_r101_fpn_1x/cascade_rcnn_r101_fpn_1x-8f6ef242.pth \
    4 --eval bbox