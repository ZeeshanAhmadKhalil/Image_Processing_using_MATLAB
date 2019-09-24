% bw=[10  5   20  15  10  5   10;
%     15  30  40  5   50  60  100;
%     200 4   45  12  10  15  20;
%     30  40  50  40  25  13  12;
%     15  4   2   1   14  5   25;
%     14  15  12  32  12  15  4;
%     55  25  24  20  10  15  10];
% f=[5 20 5 15 20 255;
%     150 10 150 100 25 255;
%     250 200 15 50 30 40;
%     10 20 30 40 20 10;
%     250 20 50 40 250 5];
bw=imread('450x340 two man wearing black cote.png');
bit_plane(bw);
% bw1=self_rgb2gray(bw);
% f=uint8(f);
% horz=linspace(0,255,10);
% z=imhist(f,10)/numel(f);
% stem(horz,z);
% z=horz;
% z=(f(:));
% sum(a(:));
% lab_sess1_interpolation(bw,[4,4]);
% C={[1,1],[1,2]};
% p=[1,2];
% ls1_find_in_cell(C,p);
% A=[1,2];
% loc={A};
% A=[1 1 1;
%    0 0 1;
%    1 1 0];
% a=ls1_m_path(A,[1,1],1)
% a{:}
% [val,loc]=ls1_n8p(A,[2,2]);
% loc{:}
% a=ls1_m_adjacency(A,[2,3],[2,2],1)
% A=[1 2 3];
% B=4;
% C=intersect(A,B)
% isempty(C)
% [De,D4,D8]=ls1_shapes(11)
% original=imread('450x340 two man wearing black cote.png');
% gray=ls1_rgb2gray(original);
% a=ls1_im2bw(original,200,200);
% a=ls1_explore_dark(original);
% M=[1 1 1 1;
%    1 1 1 1;
%    1 1 1 1];
% A=[1 2 3 4;
%    5 6 7 8;
%    9 10 11 12;
%    13 14 15 16];
% a=ls1_find_avg(gray,M);
% a=ls1_negation(original);
% a=ls1_adjust_brightness(original,1/2);