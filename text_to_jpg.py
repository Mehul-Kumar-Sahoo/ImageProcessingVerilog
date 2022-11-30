import numpy as np
import matplotlib.pyplot as plt

def binary_to_decimal(binary):
    decimal=0
    for i in range(8):
        decimal+=(binary%10)*(2**i)
        binary/=10;
    return decimal

def txt_array(file):
    lst=[]
    lst.append(list(int(x,16) for x in file))
    lst_np=np.array(lst)
    lst_np=np.reshape(lst_np,(256,384))
    print(lst_np.shape)
    return lst_np

def save_image(array):
    plt.imshow(array,cmap='gray')
    plt.savefig("C:/Users/sahoo/OneDrive/Documents/COLLEGE/ICHIP_22/PS_1/Output.jpg")

file_1=open("C:/Users/sahoo/OneDrive/Documents/COLLEGE/ICHIP_22/PS_1/Output.txt",'r')
save_image(txt_array(file_1))