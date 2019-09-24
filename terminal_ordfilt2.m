f=[3  8  9  11;
   12 16 56 18;
   7  6  9  11;
   5  4  3  2];
g_min=ordfilt2(f,1,ones(3,3));
g_max=ordfilt2(f,9,ones(3,3));
g_max=ordfilt2(f,5,ones(3,3))