from PIL import Image
import glob
import os
import pudb

# im = Image.open('images/ISIC_0024318.jpg')
# width, height = im.size   # Get dimensions

width=600
height = 450
new_width=450
new_height=450

left = (width - new_width)/2
top = (height - new_height)/2
right = (width + new_width)/2
bottom = (height + new_height)/2

images = glob.glob('../downloads/isic2018/NV/*.jpg')

for image in images:
    image_name = image.split('/')[-1].split('.')[0] + '_mod.jpg'
    img = Image.open(image)
    image_crop = img.crop((left, top, right, bottom))
    image_mod = image_crop.resize((256, 256), Image.ANTIALIAS)
    image_mod.save(os.path.join('../downloads/isic2018_mod/NV', image_name))

