export CUDA_VISIBLE_DEVICES=0,9
PORT=29503 ./tools/dist_train.sh configs/yolact/yolact_r50_1x8_ori_size_bdd100k.py 2 --work-dir out/yolact_r50_1x8_ori_size_bdd100k