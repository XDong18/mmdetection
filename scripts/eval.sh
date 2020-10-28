export CUDA_VISIBLE_DEVICES=4,9

PORT=29502 ./tools/dist_test.sh configs/cascade_rcnn/cascade_rcnn_r50_fpn_1x_bdd100k.py a_out/cascade_rcnn_r50_fpn_1x/lcascade_rcnn_r50_fpn_1x-b915cc22.pth 2 --eval bbox --eval-options "classwise=True"