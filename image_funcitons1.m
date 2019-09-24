coloured_image=imread('35x30 coloured.jpg');
coloured_image;
grayscale_image=rgb2gray(coloured_image);
blaceandwhite_image=im2bw(coloured_image);
blaceandwhite_image;
imshow(blaceandwhite_image);
imshow(coloured_image);