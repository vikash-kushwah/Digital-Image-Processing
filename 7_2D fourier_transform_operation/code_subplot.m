% 24/2/25
% To perform 2-dimensional Fourier transform creation on an image

% A = Read an Image
A = imread('img2.jpg'); 
B = rgb2gray(A); % Convert to grayscale
C = fft2(double(B)); % Compute the 2D FFT of the grayscale image
D = ifft2(C); % Compute the inverse FFT
C_shifted = fftshift(C); % Shift the zero-frequency component

figure;
subplot(3,2,1); imshow(A); title('Original Image');
subplot(3,2,2); imshow(B); title('Grayscale Image');
subplot(3,2,3); imshow(log(abs(C) + 1), []); title('Magnitude Spectrum (FFT)');
subplot(3,2,4); imshow(uint8(abs(D))); title('Reconstructed Image (IFFT)');
subplot(3,2,5); imshow(log(abs(C_shifted) + 1), []); title('Centered Magnitude Spectrum (FFT)');
subplot(3,2,6); imshow(angle(C), []); title('Phase Spectrum');