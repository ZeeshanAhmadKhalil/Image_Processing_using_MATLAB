image=imread('75x75 coloured image.png');
size(image);
min(image);
max(image)
image2=rgb2gray(image);
image2;
min(image2);
max(image2);
image3=im2bw(image);
min(image3);
max(image3);
image3;
% image4=mat2gray(image);
imshow(image4);