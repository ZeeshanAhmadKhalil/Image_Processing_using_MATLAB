% f=[1 2 3;
%    4 5 6;
%    7 8 9];
f=imread('450x340 two man wearing black cote.png');
f=rgb2gray(f);
F=fft2(f);
S=abs(F);
imshow(S,[]);