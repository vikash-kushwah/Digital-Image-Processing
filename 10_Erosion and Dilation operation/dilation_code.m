% To perform dilation operation in an image
clc;
clear all;
close all;

po = imgetfile();           % Open file dialog
I = imread(po);             % Read image

se = strel('ball', 5, 5);   % Structuring element: ball with radius 5
I2 = imdilate(I, se);       % Apply dilation

% Display both images side by side using subplot
figure;
subplot(1,2,1);
imshow(I);
title('Original Image');

subplot(1,2,2);
imshow(I2);
title('Dilated Image');
