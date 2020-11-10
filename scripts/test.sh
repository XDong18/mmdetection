export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/cascade_rcnn/cascade_rcnn_x101_32x4d_fpn_1x_bdd100k.py \
    out/cascade_rcnn_x101_32x4d_fpn_1x/cascade_rcnn_x101_32x4d_fpn_1x-46de620b.pth \
    4 --eval bbox