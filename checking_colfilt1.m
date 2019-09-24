f=[1 2 3;
   1 1 1;
   1 1 1];
% f=rgb2gray(f);
g=colfilt(f,[3,3],'sliding',@sum)
g=colfilt(f,[3,3],'sliding',@self_mean2)