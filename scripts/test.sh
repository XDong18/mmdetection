export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/cascade_rcnn/cascade_rcnn_r50_fpn_1x_bdd100k.py \
    out/cascade_rcnn_r50_fpn_1x/cascade_rcnn_r50_fpn_1x-b915cc22.pth \
    4 --eval bbox