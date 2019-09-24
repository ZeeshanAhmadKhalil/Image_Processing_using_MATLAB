f=[3 6 7;
   4 2 1;
   5 4 3];
f=padarray(f,[1,1],'replicate');
min1=colfilt(f,[3,3],'sliding',@min);
min1=min1(2:end-1,2:end-1);
max1=colfilt(f,[3,3],'sliding',@max);
max1=max1(2:end-1,2:end-1);
mean1=colfilt(f,[3,3],'sliding',@harmmean);
mean1=mean1(2:end-1,2:end-1)
% avg=@(A)sum(A(:))./numel(A);
% sum(f(:))./numel(f)
% avg1=colfilt(f,[3,3],'sliding',avg);
% avg1=avg1(2:end-1,2:end-1);