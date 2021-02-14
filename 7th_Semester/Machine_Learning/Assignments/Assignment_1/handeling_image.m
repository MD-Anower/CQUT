clear;
clc;

%%%%%%%%%%%% Reading Images %%%%%%%%%%%%%%

Coliseum = imread('C:\Assignment_1_ML_62017010084\file\images\image.PNG');
image(Coliseum);

%%%%%%%%%%%%%%%  wrte images %%%%%%%%%%%%%%%%%
imwrite(Coliseum,'C:\Assignment_1_ML_62017010084\file\images\image.PNG');
