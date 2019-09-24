f=[1 3 5;
   7 5 2;
   4 6 7];
laplacian_mask=fspecial('laplacian',0);
g_laplacian=imfilter(f,laplacian_mask,'circular','same');
g_laplacian=mat2gray(g_laplacian)*7;
sobel_mask1=fspecial('sobel');
sobel_mask2=sobel_mask1';
g_sobel1=imfilter(f,sobel_mask1,'circular','same');
g_sobel2=imfilter(f,sobel_mask2,'circular','same');
g_sobel=((g_sobel1).^2+(g_sobel2).^2).^(1/2);
g_sobel=mat2gray(g_sobel)*7;
perwitt_mask1=fspecial('prewitt');
prewitt_mask2=perwitt_mask1';
g_perwitt1=imfilter(f,perwitt_mask1,'circular','same');
g_perwitt2=imfilter(f,prewitt_mask2,'circular','same');
g_perwitt=((g_perwitt1).^2+(g_perwitt2).^2).^(1/2);
g_perwitt=mat2gray(g_perwitt)*7;
robert_mask1=[-1 0;
                0 1];
robert_mask2=[0 -1;
               1  0];
g_robert1=imfilter(f,robert_mask1,'circular','same')
g_robert2=imfilter(f,robert_mask2,'circular','same')
g_robert=((g_robert1).^2+(g_robert2).^2).^(1/2)
g_robert=mat2gray(g_robert)*7