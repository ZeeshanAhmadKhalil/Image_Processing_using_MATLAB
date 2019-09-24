f=[3 6 7;
   4 2 1;
   5 4 3];
w=[1 0 2;
   1 2 0;
   1 1 1];
corr1=imfilter(f,w,'corr',0);
conv1=imfilter(f,w,'conv',0)