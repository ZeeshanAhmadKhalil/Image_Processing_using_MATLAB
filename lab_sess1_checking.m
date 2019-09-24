% original=imread('255x175 coloured face.png');
% bw=lab_sess1_rgb2gray(original)
% imshow(bw)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bw=[10  5   20  15  10  5   10;
    15  30  40  5   50  60  100;
    200 4   45  12  10  15  20;
    30  40  50  40  25  13  12;
    15  4   2   1   14  5   25;
    14  15  12  32  12  15  4;
    55  25  24  20  10  15  10];
result=lab_sess1_interpolation(bw,[4,4]);
% result1=uint8(imresize(bw,[4,4]))
% original=imread('255x175 coloured face.png');
% bw=lab_sess1_rgb2gray(original);
% result=lab_sess1_interpolation(original,[300,300]);
% imshow(result)
% result1=bilinearInterpolation_faizian(bw,[4,4])
% 
% result=lab_sess1_interpolation(bw,[500,500]);
% % size(result)
% figure,imshow(result),figure,imshow(result1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% A={}
% B={[1,2]};
% A=horzcat(A,B)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% cell={[1,2],[2,1]}
% temp=cell{1}  t
% y=temp(2)