function[De,D4,D8]=lab_sess1_distances(matrix,p,q)
[r,c]=size(matrix);
x=p(1);
y=p(2);
s=q(1);
t=q(2);
if(x>0&&x<=c&&y>0&&y<=c&&s>0&&s<=r&&t>0&&t<=c)
    De=sqrt(((x-s)^2)+((y-t)^2));
    D4=abs(x-s)+abs((y-t));
    D8=max(abs(x-s),abs((y-t)));
else
    disp('points are not in matrix');
    De=[];
    D4=[];
    D8=[];
end