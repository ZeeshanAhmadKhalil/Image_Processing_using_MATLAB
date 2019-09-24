% THE TIC TOC TELLS US TOTAL TIME ELIPSED
tic;
A=[1,1,1;2,2,2;3,3,3];
B=[3,3,3;4,4,4;5,5,5];
sum=A+B;
minus=A-B;
array_multiplication=A.*B;
matrix_multiplication=A*B;
array_left_division=A.\B; % A./B=B.\A BUT A/B!=B\A
array_right_division=B./A;
C=[23 43;43 54];
D=[43 45;54 43];
inverse_of_C=inv(C);
inverse_of_D=inv(D);
matrix_left_division=C\D;% means D*inv(C)
matrix_right_division=C/D;% means C*inv(D)
array_power=A.^B;
matrix_power=A^3; % means A*A*A
transpose_of_A=A.';
transpose_of_B=B';
unary_plus_of_A=+A;
unary_minus_of_B=-B;
absolute_B=abs(unary_minus_of_B);
colon=A:B;% did'nt understand we will discuss it throughout the subject
toc;
%NUMEL() GIVES US TOTAL ELEMENTS E.G 17x14x3 IN THE IMAGE BELOW
coloured=imread('17x14 coloured.jpg');
numel(coloured)
%GENERATES NUMBER OF ZEROS 1x714 IN BELOW EXAMPLE
zeros(1,numel(coloured))