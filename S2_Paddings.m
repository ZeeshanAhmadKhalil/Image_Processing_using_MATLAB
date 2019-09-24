f=[3 6 7;
   2 1 6;
   5 4 5];
symmetric=padarray(f,[2,2],'symmetric')
replicate=padarray(f,[2,2],'replicate')
circular=padarray(f,[2,2],'circular')