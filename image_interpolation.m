img_35x30=imread('35x30 coloured.jpg');
img_35x30_gray=rgb2gray(img_35x30);
imshow(img_35x30_gray);
img_35x30_gray(:,1:2:end)=[];
img_35x30_gray;
imshow(img_35x30_gray);
imwrite(img_35x30_gray,'img_35x15_gray.jpg')