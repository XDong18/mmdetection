_base_ = './cascade_rcnn_r50_fpn_1x_bdd100k.py'
model = dict(pretrained='torchvision://resnet101', backbone=dict(depth=101))

# learning policy
lr_config = dict(
    policy='step',
    warmup='linear',
    warmup_iters=500,
    warmup_ratio=0.001,
    step=[16, 22])
total_epochs = 24