export CUDA_VISIBLE_DEVICES=0,1,2,3
./tools/dist_train.sh configs/yolo/yolov3_d53_320_273e_bdd100k.py 4 --work-dir out/yolov3_320_273e