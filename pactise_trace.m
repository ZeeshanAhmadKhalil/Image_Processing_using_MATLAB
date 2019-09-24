A=[1 2 3 4;6 7 8 9];
A(1,2);
B=rand(100,100);
% imshow(B);
original2=imread('17x14 coloured.jpg');
% bw=rgb2gray(original2)

converted=rgb2gray(original2);

converted=double(converted);
% converted=converted/255
% imshow(converted)
converted