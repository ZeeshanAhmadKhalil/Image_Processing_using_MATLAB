function[S]=ls1_m_path(matrix,p,v)
S={p};
h=1;
while(h<=numel(S))
    x=S{h}(1);
    y=S{h}(2);
    [~,loc]=ls1_n8p(matrix,[x,y]);
    for i=1:numel(loc)
        if(ls1_m_adjacency(matrix,[x,y],loc{i},v)&&~ls1_find_in_cell(S,loc{i}))
            S=horzcat(S,loc{i});
        end
    end
    h=h+1;
end
end