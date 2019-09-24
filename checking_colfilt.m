f=imread('17x14 coloured.jpg');
f=rgb2gray(f);
A=[1 1 1;
   1 1 1;
   1 1 1];
g=colfilt(f,[3,3],'sliding',gmean(A));