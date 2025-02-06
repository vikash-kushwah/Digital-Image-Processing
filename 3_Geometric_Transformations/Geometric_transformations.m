% wap to show image rotation scaling and translation using
% geometric transformations

I = imread('image.jpeg');

cropped_image = imcrop(I, [15, 68, 600, 500]);

translated_image = imtranslate(I, [50, 50]);

rotated_image = imrotate(I, 90);

resized_image1 = imresize(I, [300, 300]); % Resize to specific dimensions
resized_image2 = imresize(I, 0.5); % Resize by scale factor


subplot(2, 3, 1), imshow(I), title('Original Image');
subplot(2, 3, 2), imshow(cropped_image), title('Cropped Image');
subplot(2, 3, 3), imshow(translated_image), title('Translated Image');
subplot(2, 3, 4), imshow(rotated_image), title('Rotated (90)');
subplot(2, 3, 5), imshow(resized_image1), title('Resized (300x300)');
subplot(2, 3, 6), imshow(resized_image2), title('Resized (Scaled 0.5)');
