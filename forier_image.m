% f=imread('450x340 two man wearing black cote.png');
f=[1 2 3;
   4 5 6;
   7 8 9];
fc=fftshift(f)
% f=rgb2gray(f);
% F=fft2(f)
% Fc=fftshift(F)
% S=abs(F);
% S;
% S=mat2gray(S);
% S=S*power(255,2)
% imshow(S);
% real_part=cos(F);
% imaginary_part=sin(F);
% imshow(f);
% imshow(F);