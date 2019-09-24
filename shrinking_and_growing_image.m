original_image=imread('255x175 coloured face.png');
bw=rgb2gray(original_image);
bw=double(bw);
bw=bw/250
imshow(bw);
