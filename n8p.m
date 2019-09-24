function[n8p_values,n8p_locations]=n8p(matrix,point)
x=point(1);
y=point(2);
[n4p_values,n4p_locations]=n4p(matrix,[x,y]);
[ndp_values,ndp_locations]=ndp(matrix,[x,y]);
n8p_values=horzcat(n4p_values,ndp_values);
n8p_locations=horzcat(n4p_locations(1:end),ndp_locations(1:end));
end