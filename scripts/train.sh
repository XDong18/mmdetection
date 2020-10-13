export CUDA_VISIBLE_DEVICES=0,1,2,3
./tools/dist_train.sh configs/dcn/faster_rcnn_r50_fpn_mdconv_c3-c5_group4_1x_bdd100k.py 4 --work-dir out/faster_rcnn_r50_fpn_mdconv_c3-c5_group4_1x