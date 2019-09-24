face=imread('255x175 coloured face.png');
% size(face);
% small_coloured=imread('17x14 coloured.jpg')
% small_bw=rgb2gray(small_coloured)
% figure,imshow(small_bw),figure,imshow(small_coloured);
bw_face=rgb2gray(face);
shrunken_face=bw_face(1:2:end,1:2:end);
% imshow(bw_face(1:2:end,1:2:end)); 
% shurken_face
resized=imresize(shrunken_face,[300 200]);
% figure,imshow(bw_face),figure,imshow(face),figure,imshow(shrunken_face),figure,imshow(resized);
% subplot(2,2,1),imagesc(face)
% subplot(2,2,2),imshow(bw_face)
% subplot(2,2,1),imshow(face),title('Image1')
% subplot(2,2,2),imshow(bw_face)
