export CUDA_VISIBLE_DEVICES=4,5,6,7
./tools/dist_train.sh configs/ssd/ssd512_bdd100k_10x.py 4 --work-dir out/ssd_512_10x