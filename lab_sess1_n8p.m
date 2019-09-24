function[val,loc]=lab_sess1_n8p(matrix,p)
[val_n4,loc_n4]=lab_sess1_n4p(matrix,p);
[val_nd,loc_nd]=lab_sess1_ndp(matrix,p);
val=horzcat(val_n4,val_nd);
loc=horzcat(loc_n4,loc_nd);
end