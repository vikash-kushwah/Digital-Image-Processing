% To perform erosion operation in an image
clc;
clear all;
close all;

po = imgetfile();           % Open file dialog
I = imread(po);             % Read image
originalBW = I;

se = strel('disk', 11);     % Structuring element: disk of radius 11
erodedBW = imerode(originalBW, se);  % Apply erosion

% Display both images side by side using subplot
figure;
subplot(1,2,1);
imshow(originalBW);
title('Original Image');

subplot(1,2,2);
imshow(erodedBW);
title('Eroded Image');
