export CUDA_VISIBLE_DEVICES=4,9

PORT=29502 ./tools/dist_test.sh configs/yolo/yolov3_d53_mstrain-608_273e_bdd100k.py a_out/yolov3_608_273e/yolov3_608_273e-8c2596a1.pth 2 --eval bbox --eval-options "classwise=True"