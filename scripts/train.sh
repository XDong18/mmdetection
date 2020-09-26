export CUDA_VISIBLE_DEVICES=0,1,2,3
python tools/train.py configs/ssd/ssd512_bdd100k.py 4 --work-dir out/ssd