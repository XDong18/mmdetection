export CUDA_VISIBLE_DEVICES=0,1,2,3
PORT=29501 ./tools/dist_train.sh configs/pafpn/faster_rcnn_r101_pafpn_1x_bdd100k.py 4 --work-dir out/faster_rcnn_r101_pafpn_1x