_base_ = './sparse_rcnn_r50_fpn_300_proposals_crop_mstrain_480-800_3x_bdd100k.py'

model = dict(pretrained='torchvision://resnet101', backbone=dict(depth=101))
data = dict(
    samples_per_gpu=1,
    workers_per_gpu=1,
)