function[value]=Eculedian_distance(matrix,p,q)
x=p(1);
y=p(2);
s=q(1);
t=q(2);
[r,c]=size(matrix());
if(x>0&&x<=r&&y>0&&y<=c&&s>0&&s<=r&&t>0&&t<=c)
    temp=(x-s)^2+(y-t)^2;
    value=sqrt(temp);
else
    value=[];
    disp('The point is not in matrix');
end
end