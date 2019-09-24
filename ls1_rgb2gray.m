function[gray]=ls1_rgb2gray(original)
[r,c,~]=size(original);
original=double(original);
gray=rand(r,c);
for i=1:r
    for j=1:c
        gray(i,j)=0.3*original(i,j,1)+0.59*original(i,j,2)+0.11*original(i,j,3);
    end
end
original=uint8(original);
gray=uint8(gray);
subplot(1,2,1),imshow(original),title('original'),subplot(1,2,2),imshow(gray),title('Transformed');
end