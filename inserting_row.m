  a=[1,2;4,9;11,12;3,6],
  b=[0,0] ;
%   row_no=3 %%where wants to insert
% a(1:row_no-1,:) = a(1:row_no-1,:) 
% tp =a(row_no:end,:)
% a(row_no,:)=b
a(row_no+1:end+1,:) =tp