function[boolean]=lab_sess1_n8_adjacency(matrix,p,q,v)
x=p(1);
y=p(2);
s=q(1);
t=q(2);
boolean=false;
if(lab_sess1_find_in_array(v,matrix(x,y))&&lab_sess1_find_in_array(v,matrix(s,t)))
    [~,loc]=lab_sess1_n8p(matrix,p);
    if(lab_sess1_find_in_cell(loc,q))
        boolean=true;
    end
end
end