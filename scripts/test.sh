export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/faster_rcnn/faster_rcnn_x101_32x4d_fpn_1x_bdd100k.py \
    b_out/faster_rcnn_x101_32x4d_fpn_1x/latest.pth \
    4 --eval bbox --val_dataset