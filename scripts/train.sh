export CUDA_VISIBLE_DEVICES=1,2,8,9
PORT=29501 ./tools/dist_train.sh configs/retinanet/retinanet_r50_fpn_1x_bdd100k.py 4 --work-dir out/retinanet_r50_fpn_1x