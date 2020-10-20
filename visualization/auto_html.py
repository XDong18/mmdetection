import os

img_dir = 'infer_img/val/cascade_rcnn_r50_fpn_1x'
img_list = os.listdir(img_dir)
out_fn = 'visualization/cascade_rcnn_r50_fpn_1x.html'
with open (out_fn, 'w') as f:
    f.write('<html>\n')
    f.write('<body>\n')
    f.write('<h1>this is a line.</h1>\n')

    for img in img_list:
        new_line = "<img src='../" + os.path.join(img_dir, img) + "'>\n"
        f.write(new_line)
    f.write('</body>\n')
    f.write('</html>\n')
