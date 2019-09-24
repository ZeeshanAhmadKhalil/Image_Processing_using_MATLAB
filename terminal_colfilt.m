f=[ 3  8  9;
    10 11 12;
    16 14 1];
f=padarray(f,[1,1],'symmetric');
g_min=colfilt(f,[3,3],'sliding',@min);
g_min(2:end-1,2:end-1);
g_max=colfilt(f,[3,3],'sliding',@max);
g_max(2:end-1,2:end-1);
g_median=colfilt(f,[3,3],'sliding',@median);
g_median(2:end-1,2:end-1);
g_mode=colfilt(f,[3,3],'sliding',@mode);
g_mode(2:end-1,2:end-1);
g_mean=colfilt(f,[3,3],'sliding',@mean);
g_mean(2:end-1,2:end-1)
g_geomean=colfilt(f,[3,3],'sliding',@geomean);
g_geomean(2:end-1,2:end-1);
g_harmmean=colfilt(f,[3,3],'sliding',@harmmean);
g_harmmean(2:end-1,2:end-1);