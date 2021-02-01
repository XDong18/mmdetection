export CUDA_VISIBLE_DEVICES=2,3,4,5,6,7,8,9
PORT=29503 ./tools/dist_train.sh \
configs/reppoints/reppoints_moment_r101_fpn_dconv_c3-c5_gn-neck+head_1x_bdd100k.py \
8 --work-dir out/reppoints_r101_bdd100k