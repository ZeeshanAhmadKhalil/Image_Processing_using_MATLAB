function[boolean]=ls1_find_in_cell(cell,p)
boolean=false;
for i=1:numel(cell)
    if(p==cell{i})
        boolean=true;
        break;
    end;
end
end