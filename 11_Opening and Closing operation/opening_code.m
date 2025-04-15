% Opening Operation with Subplot
clc;
clear all;
close all;

po = imgetfile();              % Open file dialog
I = imread(po);                % Read image
se = strel('disk', 5);         % Disk-shaped structuring element (radius 5)

afterOpening = imopen(I, se);  % Perform opening

% Show original and processed image using subplot
figure;
subplot(1,2,1);
imshow(I);
title('Original Image');

subplot(1,2,2);
imshow(afterOpening);
title('After Opening');
