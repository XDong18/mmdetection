export CUDA_VISIBLE_DEVICES=4,9

PORT=29502 ./tools/dist_test.sh configs/dcn/faster_rcnn_r101_fpn_dconv_c3-c5_1x_bdd100k.py out/faster_rcnn_r101_fpn_dconv_c3-c5_1x/latest.pth 2 --eval bbox --eval-options "classwise=True"