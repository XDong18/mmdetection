export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/pafpn/faster_rcnn_r50_pafpn_1x_bdd100k.py \
    out/faster_rcnn_r50_pafpn_1x/latest.pth \
    4 --eval bbox --val_dataset