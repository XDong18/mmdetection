export CUDA_VISIBLE_DEVICES=0,1,2,3
./tools/dist_train.sh configs/fcos/fcos_r101_caffe_fpn_gn-head_4x4_2x_bdd100k.py 4 --work-dir out/fcos_r101_caffe_fpn_gn-head_4x4_2x