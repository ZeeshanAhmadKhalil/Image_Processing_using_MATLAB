coloured_image=imread('75x75 coloured image.png');
black_and_white=im2bw(coloured_image);
gray_scale=rgb2gray(coloured_image);
% immovie(coloured_image);
hundred_shades=mat2gray(coloured_image,[155,255])
% imshow(hundred_shades)
% figure,imshow(coloured_image),figure,imshow(gray_scale),figure,imshow(black_and_white),figure,imshow(hundred_shades);
imwrite(black_and_white,'75x75 blace and white.jpg');