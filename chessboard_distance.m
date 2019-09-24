function[value]=chessboard_distance(matrix,p,q)
x=p(1);
y=p(2);
s=q(1);
t=q(2);
[r,c]=size(matrix());
if(x>0&&x<=r&&y>0&&y<=c&&s>0&&s<=r&&t>0&&t<=c)
    value=max(abs(x-s),abs(y-t));
else
    value=[];
    disp('The point is not in matrix');
end
end