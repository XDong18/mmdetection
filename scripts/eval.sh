export CUDA_VISIBLE_DEVICES=4,9

PORT=29502 ./tools/dist_test.sh configs/retinanet/retinanet_r50_fpn_1x_bdd100k.py out/c_out/retinanet_r50_fpn_1x/latest.pth 2 --eval bbox --eval-options "classwise=True"