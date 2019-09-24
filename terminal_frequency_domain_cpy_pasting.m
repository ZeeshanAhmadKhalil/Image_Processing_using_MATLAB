robert_mask1=[-1 0;
                0 1];
robert_mask2=[0 -1;
               1  0];
g_robert1=imfilter(f,robert_mask1,'circular','same');
g_robert2=imfilter(f,robert_mask2,'circular','same');
g_robert=((g_robert1).^2+(g_robert2).^2).^(1/2);
g_robert=mat2gray(g_robert)*7;