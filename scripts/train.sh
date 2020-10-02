export CUDA_VISIBLE_DEVICES=0,1,2,3
./tools/dist_train.sh configs/yolo/yolov3_d53_mstrain-608_273e_bdd100k.py 4 --work-dir out/yolov3_608_273e --resume-from out/yolov3_608_273e/epoch_30.pth