_base_ = [
    '../_base_/models/faster_rcnn_r50_fpn.py',
    '../_base_/datasets/bdd100k_detection.py',
    '../_base_/schedules/schedule_1x.py', '../_base_/default_runtime.py'
]

# model settings
model = dict(
    roi_head = dict(
        bbox_head = dict(
            num_classes=10,
        ) 
    ))

# data loader
data = dict(
    samples_per_gpu=4, # TODO samples pre gpu
    workers_per_gpu=2,
)