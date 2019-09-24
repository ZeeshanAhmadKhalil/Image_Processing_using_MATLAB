% f=[3 7 6
%    1 5 2 ];
f=[7 2;
   4 1];
% f=imread('450x340 two man wearing black cote.png');
% f=rgb2gray(f);
% f=fftshift(f);   % Does know how it works
F=fft2(f)
F_=ifft2(F);
S=abs(F);
% imshow(S,[]);