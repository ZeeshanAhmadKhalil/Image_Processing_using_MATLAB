% im=imread('17x14 coloured.jpg');
im=[1 2 3;
    4 5 7;
    7 8 9];
im=rgb2gray(im);
w=[1 1 1;
   1 1 1;
   1 1 1];
% im=double(im);
w=w/sum(w(:));
g=imfilter(im,w,'corr',0,'same');
im;
g
% subplot(1,2,1),imshow(im),title('original');
% subplot(1,2,2),imshow(g),title('filtered');