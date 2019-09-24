% cf = meshgrid(1 : 5, 1)
A=[1 2 3 4 5 ; 1 2 3 4 5];
c=size(A)
original=imread('255x175 coloured face.png');
bw=self_rgb2gray(original);
imshow(bw)
