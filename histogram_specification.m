x=imread('280x335 laughing baby.png');
x=rgb2gray(x);
z=imread('225x310 wowed baby.png');
z=rgb2gray(z);
bin=30;
z_hist=imhist(x,bins);
y=histeq(z,z_hist);
subplot(3,2,1),imhist(z,bin),title('X Hist');
subplot(3,2,2),imshow(z),title('X');
subplot(3,2,3),imhist(x,bin),title('Z Hist');
subplot(3,2,4),imshow(x),title('Z');
subplot(3,2,5),imhist(y,bin),title('Y Hist');
subplot(3,2,6),imshow(y),title('Y');
% figure,imshow(z),
% figure,imshow(x),
% figure,imshow(y),