function[]=draw_histograms(image,bin)
[~,~,com]=size(image);
if(com>1)
    image=self_rgb2gray(image);
end
% h=imhist(image,bin)/numel(image);
h=imhist(image,bin);
horz=linspace(0,255,bin);
% axis([-30 255 0 30000]);
% set(gca,'xtick',0:20:255);
% set(gca,'ytick',0:10000:30000);
subplot(2,2,1),imhist(image,bin),title('imhist'),axis tight;
subplot(2,2,2),bar(horz,h),title('bar'),axis tight;
subplot(2,2,3),stem(horz,h,'m-d','fill'),title('stem'),axis tight;
subplot(2,2,4),plot(horz,h,'m-*'),title('plot'),axis tight;
end