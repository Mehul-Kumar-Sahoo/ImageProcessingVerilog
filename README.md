# Image Processing Using Verilog #

Skills: Verilog HDL

## The pixel_controller module is able to perform following operations on a grayscale image :- ##
 - Increase Brightness
 - Decrease Brightness
 - Image Thresholding
 - Image inversion

## The Working process of the code is as follows:- ##
 - The "txt_to_jpg.py" file is used to create a .txt file which contains pixel values of an image in 8-bit binary format.
 - The obtained text file is then passed into the simulation source file of verilog i.e. "Pixel_controller_tb.v".
 - The Design Module is in "Pixel_controller.v".
 - The simulation source returns a text file with the processed image in similar format as the input file.
 - Then "jpg_to_txt.py" file is used to create .jpg file from the text file obtained after simulation.
 
The amount of brightness to be increased or decreased and the threshold value of pixel can be changed in the "Pixel_controller_tb.v".

## The operation to be carried can also be changed by changing the variable "select" in "Pixel_controller_tb.v" acc. to the following description :- ##
 - 2’b00 Increase Brightness
 - 2’b01 Decrease Brightness
 - 2’b10 Image Thresholding
 - 2’b11 Image Inversion
