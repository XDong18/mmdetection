_base_ = [
    '../_base_/models/retinanet_r50_fpn.py',
    '../_base_/datasets/bdd100k_detection.py',
    '../_base_/schedules/schedule_1x.py', '../_base_/default_runtime.py'
]

# optimizer
optimizer = dict(type='SGD', lr=0.01, momentum=0.9, weight_decay=0.0001)

# model
model = dict(
    bbox_head=dict(
        num_classes=10, # bdd100k class number
    )
)

# data loader
data = dict(
    samples_per_gpu=4, # TODO samples pre gpu
    workers_per_gpu=2,
)
