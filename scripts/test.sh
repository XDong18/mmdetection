export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/dcn/faster_rcnn_r50_fpn_mdconv_c3-c5_group4_1x_bdd100k.py \
    out/faster_rcnn_r50_fpn_mdconv_c3-c5_group4_1x/latest.pth \
    4 --eval bbox --val_dataset