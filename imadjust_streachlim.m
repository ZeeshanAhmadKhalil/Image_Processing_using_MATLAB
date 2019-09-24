original=imread('17x14 coloured.jpg');
gray=self_rgb2gray(original);
% low_high=[0.5 0.5001];
low_high=stretchlim(gray);
bw=imadjust(gray,low_high,[0,1]);
negative=imadjust(original,[0,1],[1,0]);
figure,imshow(bw),figure,imshow(negative);