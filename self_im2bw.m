function[bw]=self_im2bw(original,threashold1,threashold2)
if(threashold1<=threashold2)
    [r,c,com]=size(original);
    if(com>1)
        original1=self_rgb2gray(original);
    end
    bw=rand(r,c);
    bw(original1<threashold1)=0;
    bw(original1>=threashold2)=1;
    subplot(1,2,1),imshow(original),title('original'),subplot(1,2,2),imshow(bw),title('Transformed');
else
    msgbox('E R R O R!!! threashold1 should be less than or equal to threashold2.');
end
end