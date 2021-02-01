_base_ = './reppoints_moment_r50_fpn_1x_bdd100k.py'
norm_cfg = dict(type='GN', num_groups=32, requires_grad=True)

lr_config = dict(step=[8, 11])
total_epochs = 12

optimizer = dict(lr=0.005)
model = dict(
    pretrained='torchvision://resnet101',
    neck=dict(norm_cfg=norm_cfg),
    bbox_head=dict(norm_cfg=norm_cfg),
    backbone=dict(
        depth=101,
        dcn=dict(type='DCN', deform_groups=1, fallback_on_stride=False),
        stage_with_dcn=(False, True, True, True)))

data = dict(
    samples_per_gpu=1,
    workers_per_gpu=1,
)