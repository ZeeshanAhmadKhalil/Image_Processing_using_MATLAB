% f=[ 10  5  20 15 10 5  10;
%     15  30 40 5  50 60 100;
%     200 4  45 12 10 15 20;
%     30  40 50 40 25 13 12;
%     15  4  2  1  14 5  25;
%     14  15 12 32 12 15 4;
%     55  25 24 20 10 15 10];
% f_=imresize(f,[4,4])
f=[18  16  17  20  155 200 210;
   110 19  111 112 113 114 115;
   116 117 118 14  119 120 121; 
   6   8   9   4   3   2   1;
   0   1   2   3   4   5   6;
   151 154 168 169 170 172 174;
   101 102 103 104 105 106 107];
f_=lab_sess1_interpolation(f,[2,2])