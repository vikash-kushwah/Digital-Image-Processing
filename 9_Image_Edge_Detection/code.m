% 03/04/2025
% To perform Image edge detection using Sobel and Canny filtering

I = imread("image2.jpg");

% Convert to grayscale if the image is RGB
j = rgb2gray(I);

% Perform edge detection
BW1 = edge(j, "sobel");
BW2 = edge(j, "canny");

figure;

% Original Image
subplot(2,1,1);
imshow(I);
title('Original Image');

% Sobel vs. Canny (Side-by-side comparison)
subplot(2,1,2);
imshowpair(BW1, BW2, 'montage');
title('Sobel vs Canny');


