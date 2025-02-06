%wap to add and multiply values from image and also fuse them 
% Read images
image1 = imread('image1.jpeg');
image2 = imread('image2.jpeg');

% Resize images to the same size
image1 = imresize(image1, [512, 512]);
image2 = imresize(image2, [512, 512]);

% Convert images to double
image1 = im2double(image1);
image2 = im2double(image2);

% Perform operations
added_image = imadd(image1, image2);
subtracted_image = imsubtract(image1, image2);
multiplied_image = immultiply(image1, image2);

% Define weights for fusion
alpha = 0.5;
beta = 0.5;
fused_image = imadd(alpha * image1, beta * image2);

% Display results
subplot(2, 3, 1), imshow(image1), title('Image 1');
subplot(2, 3, 2), imshow(image2), title('Image 2');
subplot(2, 3, 3), imshow(added_image), title('Added Image');
subplot(2, 3, 4), imshow(subtracted_image), title('Subtracted Image');
subplot(2, 3, 5), imshow(multiplied_image), title('Multiplied Image');
subplot(2, 3, 6), imshow(fused_image), title('Fused Image');
