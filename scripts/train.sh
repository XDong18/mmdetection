export CUDA_VISIBLE_DEVICES=5,6,7,8s
PORT=29501 ./tools/dist_train.sh configs/cornernet/cornernet_hourglass104_mstest_4x6_210e_bdd100k.py 4 --work-dir out/cornernet_hourglass104_mstest_4x6_210e