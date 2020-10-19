export CUDA_VISIBLE_DEVICES=0,1,2,3
PORT=29501 ./tools/dist_train.sh configs/dcn/faster_rcnn_x101_32x4d_fpn_dconv_c3-c5_1x_bdd100k.py 4 --work-dir out/faster_rcnn_x101_32x4d_fpn_dconv_c3-c5_1x