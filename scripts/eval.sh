export CUDA_VISIBLE_DEVICES=4,9

PORT=29502 ./tools/dist_test.sh configs/cascade_rcnn/cascade_rcnn_x101_64x4d_fpn_1x_bdd100k.py out/cascade_x101_64x4d_fpn_1x/cascade_x101_64x4d_fpn_1x-d0f391c7.pth 2 --eval bbox --eval-options "classwise=True"