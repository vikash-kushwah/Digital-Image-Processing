% 24/2/25
% To perform 2-dimensional Fourier transform creation on an image

% A = Read an Image
A = imread('img.jpg'); % Replace 'your_image.jpg' with your image file
figure; imshow(A); title('Original Image');

% B = Gray conversion
B = rgb2gray(A); % Convert to grayscale
figure; imshow(B); title('Grayscale Image');

% C = FFT(B)
C = fft2(double(B)); % Compute the 2D FFT of the grayscale image
figure; imshow(log(abs(C) + 1), []); title('Magnitude Spectrum (FFT)'); % Display magnitude spectrum

% IFT(C) + Show Image
D = ifft2(C); % Compute the inverse FFT
figure; imshow(uint8(abs(D))); title('Reconstructed Image (IFFT)');

% Optional: Shift the zero-frequency component to the center for better visualization
C_shifted = fftshift(C);
figure; imshow(log(abs(C_shifted) + 1), []); title('Centered Magnitude Spectrum (FFT)');

% Optional: Display the phase spectrum
figure; imshow(angle(C), []); title('Phase Spectrum');