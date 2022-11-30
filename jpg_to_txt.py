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
