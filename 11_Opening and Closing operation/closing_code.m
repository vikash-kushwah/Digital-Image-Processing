% Closing Operation with Subplot
clc;
clear all;
close all;

po = imgetfile();                % Open file dialog
I = imread(po);                  % Read image
originalBW = I;

se = strel('disk', 10);          % Disk-shaped structuring element (radius 10)
closeBW = imclose(originalBW, se);  % Perform closing

% Show original and processed image using subplot
figure;
subplot(1,2,1);
imshow(originalBW);
title('Original Image');

subplot(1,2,2);
imshow(closeBW);
title('After Closing');
