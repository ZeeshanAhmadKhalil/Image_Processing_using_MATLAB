function[boolean]=lab_sess1_find_in_array(v,val)
boolean=false;
for i=1:numel(v)
    if(isequal(val,v(i)))
        boolean=true;
        break;
    end
end
end