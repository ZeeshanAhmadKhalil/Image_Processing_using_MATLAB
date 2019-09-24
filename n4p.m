function[n4p_values,n4p_locations]=n4p(matrix,point)
x=point(1);
y=point(2);
[r,c]=size(matrix);
n4p_locations={[]};
if(x~=r)
    n4p1=matrix(x+1,y);
    n4p_locations=horzcat(n4p_locations,[x+1,y]);
else
    n4p1=[];
end
if(x~=1)
    n4p2=matrix(x-1,y);
    n4p_locations=horzcat(n4p_locations,[x-1,y]);
else
    n4p2=[];
end
if(y~=c)
    n4p3=matrix(x,y+1);
    n4p_locations=horzcat(n4p_locations,[x,y+1]);
else
    n4p3=[];
end
if(y~=1)
    n4p4=matrix(x,y-1);
    n4p_locations=horzcat(n4p_locations,[x,y-1]);
else
    n4p4=[];
end
n4p_locations=n4p_locations(~cellfun('isempty',n4p_locations));
n4p_values=[n4p1,n4p2,n4p3,n4p4];
end