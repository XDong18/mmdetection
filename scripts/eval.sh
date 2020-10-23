export CUDA_VISIBLE_DEVICES=0,1,2

./tools/dist_test.sh configs/yolo/yolov3_d53_mstrain-608_273e_bdd100k.py out/yolov3_608_273e/latest.pth 3} --eval bbox --eval-options "classwise=True"