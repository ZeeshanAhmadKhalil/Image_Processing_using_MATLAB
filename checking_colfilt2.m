f=[5 3 2 1 0 1 2 3;
   2 2 2 1 0 1 5 4;
   5 4 4 3 2 1 1 1;
   3 3 3 4 4 2 2 2;
   2 2 2 5 5 4 1 1;
   1 4 4 4 3 3 2 2];
f1=padarray(f,[2,2],'symmetric');
% b=sum3(a);
% f=imread('450x340 two man wearing black cote.png');
% f=rgb2gray(f);
g=colfilt(f1,[5,5],'sliding',@median);
gg=g(3:end-2,3:end-2)
% mean1=colfilt(f,[3,3],'sliding',@mean)
% geomean1=colfilt(f,[3,3],'sliding',@geomean)
% harmean1=colfilt(f,[3,3],'sliding',@harmmean)
% mode1=colfilt(f,[3,3],'sliding',@mode)
% min1=colfilt(f,[3,3],'sliding',@min)
% max1=colfilt(f,[3,3],'sliding',@max)
% max1=colfilt(f,[3,3],'sliding',@max)
% function v=sum_this(A)
%     v=sum(A(:));
% end
% imshow(g)
