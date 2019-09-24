coloured=imread('75x75 coloured image.png');
gray_sclae=rgb2gray(coloured);
black_and_white=im2bw(coloured);
mat=mat2gray(coloured);
% imshow(coloured)
figure,imshow(coloured),figure,imshow(gray_sclae),figure,imshow(black_and_white),figure,imshow(coloured);