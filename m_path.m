function[S]=m_path(matrix,p,v)
x=p(1);
y=p(2);
S={[x,y]};
k=1;
while(k<=numel(S))
    temp=S{k};
    x=temp(1);
    y=temp(2);
    k=k+1;
    [~,loc]=n8p(matrix,[x,y]);
    for i=1:numel(loc)
        if(is_m_adjacent(matrix,loc{i},[x,y],v)&&find_in_cell(S,loc{i})==false)
        S=horzcat(S,loc{i});
        end
    end
end
end