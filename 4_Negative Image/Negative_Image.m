%wap to display negative of an image
I=imread('image.jpeg')
L=256-1-I
subplot(1,2,1)
imshow(I)
title('Original Image')
subplot(1,2,2)
imshow(L)
title('Negative Image')