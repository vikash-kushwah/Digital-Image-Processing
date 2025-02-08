%wap to perform different logical operations on an image
% Read two images
A = imread('image1.jpeg');
B = imread('image2.jpeg'); % Second image

% Resize images to the same dimensions
targetSize = [150 150];
A_resized = imresize(A, targetSize);
B_resized = imresize(B, targetSize);

% Convert to grayscale
A_gray = rgb2gray(A_resized);
B_gray = rgb2gray(B_resized);

% Bit Complement
A_bitcmp = bitcmp(A_gray); 
B_bitcmp = bitcmp(B_gray);

% Thresholding for binary conversion
thresh = 128;
A_bin = A_gray > thresh;
B_bin = B_gray > thresh;

% Logical operations
not_A = ~A_bin;
not_B = ~B_bin;
and_img = A_bin & B_bin;
or_img = A_bin | B_bin;
xor_img = xor(A_bin, B_bin);
nand_img = ~(A_bin & B_bin);
nor_img = ~(A_bin | B_bin);

% Display results
figure;

subplot(4, 3, 1); imshow(A_resized); title('Image A');
subplot(4, 3, 2); imshow(B_resized); title('Image B');
subplot(4, 3, 3); imshow(A_bitcmp); title('Bit Complement A');
subplot(4, 3, 4); imshow(B_bitcmp); title('Bit Complement B');
subplot(4, 3, 5); imshow(A_bin); title('Binary A');
subplot(4, 3, 6); imshow(B_bin); title('Binary B');
subplot(4, 3, 7); imshow(not_A); title('NOT A');
subplot(4, 3, 8); imshow(not_B); title('NOT B');
subplot(4, 3, 9); imshow(and_img); title('AND (A & B)');
subplot(4, 3, 10); imshow(or_img); title('OR (A | B)');
subplot(4, 3, 11); imshow(xor_img); title('XOR (A ⊕ B)');
subplot(4, 3, 12); imshow(nand_img); title('NAND (A NAND B)');
