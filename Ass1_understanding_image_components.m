coloured=imread('17x14 coloured.jpg');
gray_scale=rgb2gray(coloured)
black_and_white=im2bw(coloured);
imshow(black_and_white)
max(coloured(:));
min(coloured(:));
max(gray_scale(:));
min(gray_scale(:));
size(coloured);
