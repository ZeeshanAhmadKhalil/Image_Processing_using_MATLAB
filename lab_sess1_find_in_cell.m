function[boolean]=lab_sess1_find_in_cell(loc,q)
boolean=false;
for i=1:numel(loc)
    if(isequal(q,loc{i}))
        boolean=true;
        break;
    end
end
end