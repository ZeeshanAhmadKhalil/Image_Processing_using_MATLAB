f=[1 4 7;
   6 7 6;
   5 3 2];
domain=[1 1 1;
        1 1 1;
        1 1 1];
g_min=ordfilt2(f,1,domain);
g_max=ordfilt2(f,sum(domain(:)),domain);
(sum(domain(:))+1)/2;
g_median=ordfilt2(f,(sum(domain(:))+1)/2,domain  );