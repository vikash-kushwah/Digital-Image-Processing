%Write a program to create histogram and histogram equalization of an image.
I = imread('hist2.jpg');
O = rgb2gray(I);
figure;

subplot(2,2,1); 
imshow(I); 
title('Original Image');

subplot(2,2,2); 
imhist(I); 
title('Original Image Histogram');

J = histeq(O);
subplot(2,2,3); 
imshow(J); 
title('Equalized Image');

subplot(2,2,4); 
imhist(J); 
title('Equalized Image Histogram');