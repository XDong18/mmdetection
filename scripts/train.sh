export CUDA_VISIBLE_DEVICES=0,1,2,3
./tools/dist_train.sh configs/ssd/ssd512_bdd100k_10x.py 4 --work-dir out/ssd_512_10x