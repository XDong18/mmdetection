export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/yolo/yolov3_d53_mstrain-608_273e_bdd100k.py \
    out/yolov3_608_273e/yolov3_608_273e-8c2596a1.pth \
    4 --eval bbox --val_dataset