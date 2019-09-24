% image=imread('17x14 coloured.jpg');
% image=rgb2gray(image);
image=[10  5   20  15  10  5   10;
    15  30  40  5   50  60  100;
    200 4   45  12  10  15  20;
    30  40  50  40  25  13  12;
    15  4   2   1   14  5   25;
    14  15  12  32  12  15  4;
    55  25  24  20  10  15  10];
self_interpolation(image,[4,4]);
% meshgrid(1:4,1)