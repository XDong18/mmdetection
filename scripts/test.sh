export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/dcn/faster_rcnn_r101_fpn_dconv_c3-c5_1x_bdd100k.py \
    b_out/faster_rcnn_r101_fpn_dconv_c3-c5_1x/latest.pth \
    4 --eval bbox --val_dataset