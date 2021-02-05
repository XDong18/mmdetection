export CUDA_VISIBLE_DEVICES=2,3,4,5,6,7,8,9
PORT=29503 ./tools/dist_train.sh \
configs/sparse_rcnn/sparse_rcnn_r101_fpn_300_proposals_crop_mstrain_480-800_3x_bdd100k.py \
8 --work-dir out/sparse-rcnn_r101_bs8_bdd100k