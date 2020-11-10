export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/faster_rcnn/faster_rcnn_r50_fpn_1x_bdd100k.py \
    b_out/faster_rcnn_r50_fpn_1x/latest.pth \
    4 --eval mAP