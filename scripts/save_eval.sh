export CUDA_VISIBLE_DEVICES=4,9
PORT=29503 ./tools/dist_test.sh configs/faster_rcnn/faster_rcnn_r50_fpn_1x_bdd100k.py \
    out/faster_rcnn_r50_fpn_1x/latest.pth \
    2 --val_dataset --result_json bdd100k-mmdetection-faster_rcnn_r50_fpn-1x-eval.json --eval bbox --eval-options "classwise=True"