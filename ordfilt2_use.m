f=[1  2  3  4  5;
   6  7  8  9  10;
   11 12 13 14 15;
   16 17 18 19 20;
   21 22 23 24 25];
mask=[1 1 1 1 1;
      1 1 1 1 1;
      1 1 1 1 1;
      1 1 1 1 1;
      1 1 1 1 1];
% mask=[1 1 1;
%       1 0 1;
%       1 1 1];
% f=padarray(f,[2,2],0);
g_min=ordfilt2(f,6,mask);
g_max=ordfilt2(f,sum(mask(:)),mask);
median=ceil((sum(mask(:)))/2);
% median=char(median);
% class(median);
% ((sum(mask(:)))/2)
% g_median1=ordfilt2(f,median,mask);
g_median=ordfilt2(f,(sum(mask(:))+1)/2,mask);
% g_median=ordfilt2(f,(sum(mask(:)))/2,mask)