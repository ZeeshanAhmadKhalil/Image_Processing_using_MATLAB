function[boolean]=find_in_array(array1,value1)
index=0;
for i=1:numel(array1)
    if(array1(i)==value1)
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