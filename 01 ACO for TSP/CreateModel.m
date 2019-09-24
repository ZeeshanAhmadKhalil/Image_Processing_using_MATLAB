%
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YOEA103
% Project Title: Ant Colony Optimization for Traveling Salesman Problem
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function model=CreateModel()

%     x=[30 50 50 70 12 54 76 89 43 09 78 43 89 76 34 234 54 435 345 654 986 343 232 654 767 879 232 099 322];
% 
%     y=[30 50 90 10 43 65 76 87 98 90 08 76 54 43 32 213 54 123 989 343 989 545 322 656 767 122 545 655 878];
%     x=[2 3 3 3 4];
%     y=[4 6 2 4 2];
    points={[2,3],[3,1],[3,3],[3,5],[4,3],[12,8],[23,43],[54,65],[123,543],[456,768],[098,876],[654,432]};
    n=numel(points);
    x=zeros(1,n);
    y=zeros(1,n);
    for i=1:n
        x(i)=points{i}(1);
        y(i)=points{i}(2);
    end
    D=zeros(n,n);
    
    for i=1:n-1
        for j=i+1:n
            
            D(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
            
            D(j,i)=D(i,j);
            
        end
    end
    
    model.n=n;
    model.x=x;
    model.y=y;
    model.D=D;

end