export CUDA_VISIBLE_DEVICES=4,9

PORT=29502 ./tools/dist_test.sh configs/ssd/ssd512_bdd100k_10x.py out/ssd_512_10x/ssd_512_10x-91845fef.pth 2 --eval bbox --eval-options "classwise=True"