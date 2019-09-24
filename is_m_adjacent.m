function[boolean]=is_m_adjacent(matrix,p,q,v)
x=p(1);
y=p(2);
s=q(1);
t=q(2);
if(find_in_array(v,matrix(x,y))==true&&find_in_array(v,matrix(s,t))==true)
   [~,loc_n4p]=n4p(matrix,[x,y]);
   [~,loc_ndp]=ndp(matrix,[x,y]);
   if(find_in_cell(loc_n4p,[s,t])==true)
       boolean=true;
   elseif(find_in_cell(loc_ndp,[s,t])==true)
       if(t>y)
           t=t-1;
           y=y+1;
       elseif(y>t)
           y=y-1;
           t=t+1;
       end
       temp=[matrix(x,y),matrix(s,t)];
       intersection=intersect(temp,v);
       if(isempty(intersection))
           boolean=true;
       else
           boolean=false;
       end
   end
else
    boolean=false;
end
end