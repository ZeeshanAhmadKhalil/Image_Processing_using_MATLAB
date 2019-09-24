function [bw]=lab_sess1_rgb2gray(original)
[r,c,~]=size(original);
original=double(original);
bw=double(rand(r,c));
for i=1:r
    for j=1:c
        bw(i,j)=0.3*original(i,j,1)+0.11*original(i,j,2)+0.59*original(i,j,3);
    end
end
bw=uint8(bw);
end