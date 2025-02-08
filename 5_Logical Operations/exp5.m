%wap to perform different logical operations on an image
A = imread('image1.jpeg');

% 1. Bit Complement (bitcmp)
B_bitcmp = bitcmp(A);

% 2. Resize the image
A_resized = imresize(A, [150 150]);
A_resized = rgb2gray(A_resized);

% 4. Thresholding for binary operations
thresh =128;
bin = A_resized > thresh;

% 5. Logical operations
not_img = 1 - bin;
off = 20;
shift = zeros(size(A_resized));
shift(off+1:end,:) = A_resized(1:end-off,:);
bin_shift = shift > thresh;
and_img = bin & bin_shift;
or_img = bin | bin_shift;
xor_img = xor(bin, bin_shift);
nand_img = 1 - (bin & bin_shift);
nor_img = 1 - (bin | bin_shift);


% 7. Display using subplot
figure;

subplot(3, 3, 1); imshow(A); title('Original');
subplot(3, 3, 2); imshow(B_bitcmp); title('Bit Complement');
subplot(3, 3, 3); imshow(bin); title('Binary');
subplot(3, 3, 4); imshow(not_img); title('NOT');
subplot(3, 3, 5); imshow(and_img); title('AND');
subplot(3, 3, 6); imshow(or_img); title('OR');
subplot(3, 3, 7); imshow(nor_img); title('NOR');
subplot(3, 3, 8); imshow(xor_img); title('XOR');
subplot(3, 3, 9); imshow(nand_img); title('NAND');
