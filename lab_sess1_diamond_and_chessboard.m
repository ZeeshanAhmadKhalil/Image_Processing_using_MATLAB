A=['111111111';'111111111';'111111111';'111111111';'111111111';'111111111';'111111111';'111111111';'111111111'];
[r,c]=size(A);
x=(r+1)/2;
y=(c+1)/2;
A(x,y)='0';
for i=1:r
    for j=1:c
        [~,D4,~]=lab_sess1_distances(A,[x,y],[i,j]);
        if(D4>(x-1))
            A(i,j)=' ';
        else
            A(i,j)=num2str(D4);
        end
    end
end
A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B=['111111111';'111111111';'111111111';'111111111';'111111111';'111111111';'111111111';'111111111';'111111111'];
[r,c]=size(B);
x=(r+1)/2;
y=(c+1)/2;
B(x,y)='0';
for i=1:r
    for j=1:c
        [~,~,D8]=lab_sess1_distances(B,[x,y],[i,j]);
        if(D8>x-1)
            B(i,j)=' ';
        else
            B(i,j)=num2str(D8);
        end
    end
end
B