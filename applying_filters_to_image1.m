% original=imread('475x630 ali nice.png');
original=[10 50 30 20 5;
          15 20 30 15 20;
          20 50 10 5 15;
          25 30 50 60 100;
          50 5 15 25 100];
% original=rgb2gray(original);
w=[1 2 3;
   1 1 1;
   1 0 1];
filtered=imfilter(original,w,'corr',0,'same')
% subplot(1,2,1),imshow(filtered);