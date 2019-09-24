[X1,coloured_image]=imread('75x75 coloured image.png');
coloured_image1=imread('75x75 coloured image.png');
black_and_white=im2bw(coloured_image1);
[X2,black_and_white1]=imread('75x75 blace and white.jpg');
subplot(1,5,5)=imshow(X1,coloured_image);
% % subplot(1,2,2)=imshow(X2,black_and_white1);
openExample('graphics/UpperandLowerSubplotsExample')
% imshow(black_and_white1);
% imwrite(black_and_white,'75x75 blace and white.jpg')
% black_and_white=imread('75x75 blace and white.jpg');
% gray_scale=rgb2gray(coloured_image);
% hundred_shades=mat2gray(coloured_image,[0,99]);
% figure,imshow(coloured_image),figure,imshow(gray_scale),figure,imshow(black_and_white),figure,imshow(hundred_shades);
% subplot(1,2,1)=imshow(X1,coloured_image);
% subplot(1,2,2)=imshow(X2,black_and_white);