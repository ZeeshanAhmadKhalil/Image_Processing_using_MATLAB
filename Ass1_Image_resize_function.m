face=imread('255x175 coloured face.png');
shrinked=imresize(face,[100 100]);
zoomed=imresize(shrinked,[250,200]);
figure,imshow(face),figure,imshow(shrinked),figure,imshow(zoomed);
