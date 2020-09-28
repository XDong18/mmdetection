export CUDA_VISIBLE_DEVICES=0,1,7
./tools/dist_train.sh cconfigs/yolo/yolov3_d53_mstrain-608_273e_bdd100k.py 3 --work-dir out/yolov3_608_273e