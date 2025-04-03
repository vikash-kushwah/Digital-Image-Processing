% 03/04/2025
% To perform linear filtering using convolution in an image
A = imread("image.jpg");
figure;

% Original Image
subplot(1,3,1);
imshow(A);
title('Original Image');

% Motion Blur
Hm = fspecial("motion", 20, 45);
MotionBlur = imfilter(A, Hm, "replicate");
subplot(1,3,2);
imshow(MotionBlur);
title('Motion Blur');

% Disk Blur
Hb = fspecial("disk", 10);
blurred = imfilter(A, Hb, "replicate");
subplot(1,3,3);
imshow(blurred);
title('Disk Blur');
