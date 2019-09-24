original=imread('255x175 coloured face.png');
bw=self_rgb2gray(original);
bw=self_imresize(bw,[500,600]);
imshow(bw);