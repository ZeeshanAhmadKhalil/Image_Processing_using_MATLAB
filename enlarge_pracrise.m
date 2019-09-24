A=[1 2;3 4;5 6];% this code is not working
B=[];
[r,c]=size(A)
j=0;
for i=1:c
    j=j+1;
    B(:,j)=A(:,i);
    j=j+1;
    B(:,j)=A(:,i);
end
C=[];
j=0;
for i=1:r
    j=j+1;
    C(j,:)=B(i,:);
    j=j+1;
    C(j,:)=B(i,:);
end
B
C