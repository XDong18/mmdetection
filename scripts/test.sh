export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/fcos/fcos_center-normbbox-centeronreg-giou_r101_caffe_fpn_gn-head_dcn_4x4_1x_bdd100k.py \
    b_out/fcos_center-normbbox-centeronreg-giou_r101_caffe_fpn_gn-head_dcn_4x4_1x/fcos_center-normbbox-centeronreg-giou_r101_caffe_fpn_gn-head_dcn_4x4_1x-9167d889.pth \
    4 --eval bbox --val_dataset