export CUDA_VISIBLE_DEVICES=4,9

PORT=29502 ./tools/dist_test.sh configs/fcos/fcos_center-normbbox-centeronreg-giou_r50_caffe_fpn_gn-head_dcn_4x4_1x_bdd100k.py out/fcos_center-normbbox-centeronreg-giou_r50_caffe_fpn_gn-head_dcn_4x4_1x/fcos_center-normbbox-centeronreg-giou_r50_caffe_fpn_gn-head_dcn_4x4_1x-99d59f90.pth 2 --eval bbox --eval-options "classwise=True"