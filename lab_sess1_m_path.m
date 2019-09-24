function[S]=lab_sess1_m_path(matrix,p,v)
S={p};
k=1;
while(k<=numel(S))
    [~,loc_n8]=lab_sess1_n8p(matrix,S{k});
    for j=1:numel(loc_n8)
        if(lab_sess1_m_adjacency(matrix,S{k},loc_n8{j},v)&&~lab_sess1_find_in_cell(S,loc_n8{j}))
            S=horzcat(S,loc_n8{j});
        end
    end
    k=k+1;
end
end