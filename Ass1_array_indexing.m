A=[ 1  2  3  4  5;
    6  7  8  9  10;
    11 12 13 14 15;
    16 17 18 19 20;
    21 22 23 24 25];
A(1:2:end,1:2:end);
B=[ 1 2 3;
    4 5 6;
    7 8 9];
sum(B(:));
sum(B(2:end,:));
B(2:end,:);
D=logical([ 1 0 0;
            0 1 0;
            0 0 1]);
C=[21 34 54;
   54 54 43;
   43 54 65];
C(D)
sum(C(D));