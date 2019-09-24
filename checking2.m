% original=imread('255x175 coloured face.png');
% bw=self_im2bw(original,128);
% a=self_im2bw(original,128,128);
% a=take_power(original,5);
% gray=self_rgb2gray(original);
% a=explore_dark_areas(original);
% b=explore_light_areas(a);
% size(original)
% gray=self_rgb2gray(original);
% negative=negate(original);
% imshow(negative);
% M=[1 1 1;
%    1 10 1;
%    1 1 1];
% % A=[1 2 3 4;
% %    5 6 7 8;
% %    8 10 11 12;
% %    13 14 15 16];
% original=imread('255x175 coloured face.png');
% A=self_rgb2gray(original);
% a=average_of_each_pixel(A,M);
% imshow(a)
% original=imread('255x175 coloured face.png');
% % gray=self_rgb2gray(original);
% % loged=explore_dark_areas(original);
% bw=self_im2bw(original,128);
% figure,imshow(bw),figure,imshow(original)
% gray1=double(gray);
% loged=log(gray1+1);
% loged=mat2gray(loged);
% loged
% loged=uint8(loged);
% figure,imshow(loged),figure,mshow(gray)
% loged;
