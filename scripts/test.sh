export CUDA_VISIBLE_DEVICES=6,7,8,9
PORT=29503 ./tools/dist_test.sh configs/ssd/ssd512_bdd100k_10x.py \
    b_out/ssd_512_10x/ssd_512_10x-91845fef.pth \
    4 --eval bbox --val_dataset