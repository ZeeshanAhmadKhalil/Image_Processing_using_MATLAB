function[]=histograms1(image,bin)
[r,c,com]=size(image);
if(com>1)
    image=self_rgb2gray(image);
end
h=imhist(image,bin);
horz=linspace(0,255,bin);
subplot(2,2,1),imhist(image,bin),title('imhist'),axis tight;
subplot(2,2,2),bar(horz,h,0.8),title('bar'),axis tight;
subplot(2,2,3),stem(horz,h,'b-p','fill'),title('stem'),axis tight;
subplot(2,2,4),plot(horz,h,'b-p'),title('plot'),axis tight;
end