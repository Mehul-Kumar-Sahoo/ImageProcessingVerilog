# import numpy as np
# from PIL import Image

# def decimalToBinary(n):
#     bnr = bin(n). replace('0b','')
#     x = bnr[::-1] #this reverses an array.
#     while len(x) < 8:
#         x += '0'
#         bnr = x[::-1]
#     return bnr

# im = Image.open('C:/Users/sahoo/OneDrive/Documents/COLLEGE/ICHIP_22/PS_1/ps1_pic.jpg','r')
# pix_val = list(im.getdata())
# pix_val_flat = [x for sets in pix_val for x in sets]
# pix_val_flat = np.array(pix_val_flat)
# pix_val_flat.reshape(98304,1)

# file_0=open()

import cv2
import numpy as np

img = cv2.imread("C:/Users/sahoo/OneDrive/Documents/COLLEGE/ICHIP_22/PS_1/ps1_pic.jpg",0)
print(img)
print(img.shape)
height, width = img.shape[:2]
print(height)
print(width)
print(np.binary_repr(230,width=8))
file = open("C:/Users/sahoo/OneDrive/Documents/COLLEGE/ICHIP_22/PS_1/Ichip_22_input.txt",'w')
for i in range(height):
    for j in range(width):
        file.write(np.binary_repr(img[i][j],width=8)+"\n")