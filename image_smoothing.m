% f=imread('450x340 two man wearing black cote.png');
f=[1 2 3 4;
   3 7 1 1;
   4 3 2 5;
   6 5 3 2];
% f=rot90(f,2);
% f=f';
w_lap1=fspecial('laplacian',0);
g_lap1=imfilter(f,w_lap1,'corr','replicate','same');
g_lap1(g_lap1<0)=0;
w_lap2=[0 -1 0;
        -1 4 -1;
        0 -1 0];
g_lap2=imfilter(f,w_lap2,'corr','symmetric','same');
g_lap2(g_lap2<0)=0;
w_lap3=[-1 -1 -1;
        -1  8 -1;
        -1 -1 -1];
g_lap3=imfilter(f,w_lap3,'corr',0,'same');
g_lap3(g_lap3<0)=0;
w_lap4=[1 1 1;
        1 -8 1;
        1 1 1];
g_lap4=imfilter(f,w_lap4,'corr',0,'same');
g_lap4(g_lap4<0)=0;
f=double(f);
w_sob1=[-1 -2 -1;
         0  0  0;
         1  2  1];
w_sob2=(w_sob1)';
f
g_sob1=imfilter(f,w_sob1,'corr','circular','same')
g_sob2=imfilter(f,w_sob2,'corr','circular','same')
g_sob=sqrt(g_sob1.^2+g_sob2.^2);
w_rob1=[-1 0;
         0 1];
w_rob2=[0 -1;
        1  0];
g_rob1=imfilter(f,w_rob1,'corr','symmetric','same');
g_rob2=imfilter(f,w_rob2,'corr','symmetric','same');
g_rob=sqrt(g_rob1.^2+g_rob2.^2);
f=uint8(f);
g_rob=uint8(g_rob);
g_sob=uint8(g_sob)
% figure,
% subplot(3,3,1),imshow(f),title('original');
% subplot(3,3,2),imshow(g_lap1),title('laplacian 1');
% subplot(3,3,3),imshow(g_lap2),title('laplacian 2');
% subplot(3,3,4),imshow(g_lap3),title('laplacian 3');
% subplot(3,3,5),imshow(g_lap4),title('laplacian 4');
% subplot(3,3,6),imshow(g_sob),title('sobel');
% subplot(3,3,7),imshow(g_rob),title('robert');
% figure,imshow(g_sob)