face=imread('255x175 coloured face.png');
bw_face=rgb2gray(face);
shrunken_face=bw_face(1:2:end,1:2:end);
[r,c]=size(shrunken_face);
temp=[];
j=0;
for i=1:c
    new_col=shrunken_face(:,i);
    temp=[temp new_col];
    temp=[temp new_col];
%     j=j+1;
%     temp(:,j)=shrunken_face(:,i);
%     j=j+1;
%     temp(:,j)=shrunken_face(:,i);
end
% imshow(shrunken_face);
% imshow(temp);
% shrunken_face(:,1)
% temp(:,1:2)
% j
% temp
% imshow(shrunken_face);
% j=0;
enlarged_face=[];
for i=1:r
    new_row=temp(i,:);
    enlarged_face=[enlarged_face ; new_row];
    enlarged_face=[enlarged_face ; new_row];
%     j=j+1;
%     enlarged_face(j,:)=temp(i,:);
%     j=j+1;
%     enlarged_face(j,:)=temp(i,:);
end
% figure,imshow(face),title('real face');
% figure,imshow(bw_face);title('black & white face');
% figure,imshow(shrunken_face);title('shrunken face');
% figure,imshow(enlarged_face),title('enlarged face');
subplot(2,2,1);imshow(face);title('real face');
subplot(2,2,2);imshow(bw_face);title('black & white face');
subplot(2,2,3);imshow(shrunken_face);title('shrunken face');
subplot(2,2,4);imshow(enlarged_face);title('enlarged face');
temp=bw_face(:,[1 1 2 2]:[end-1 end-1 end end]);
% imshow(temp);
