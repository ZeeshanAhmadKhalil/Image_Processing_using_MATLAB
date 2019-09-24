function[boolean]=find_in_cell(C,point)
index=0;
for i=1:numel(C)
    if isequal(C{i},point)
        index=i;
        break;
    end
end
if(index>0)
     boolean=true;
else
     boolean=false;
end
end