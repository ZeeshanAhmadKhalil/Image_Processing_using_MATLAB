function[val,loc]=ls1_n8p(matrix,p)
[val_n4p,loc_n4p]=ls1_n4p(matrix,p);
[val_ndp,loc_ndp]=ls1_ndp(matrix,p);
val=horzcat(val_n4p,val_ndp);
loc=horzcat(loc_n4p,loc_ndp);
end