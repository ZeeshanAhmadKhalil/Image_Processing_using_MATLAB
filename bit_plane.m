function[]=bit_plane(image)
[r,c,com]=size(image);
if(com>1)
image=self_rgb2gray(image);
end
bit_matrix=zeros(r,c,8);
for i=1:8
    for j=1:r
        for k=1:c
            bit_matrix(j,k,i)=bitget(image(j,k),i);
        end
    end
end
subplot(2,4,1),imshow(bit_matrix(:,:,1));
subplot(2,4,2),imshow(bit_matrix(:,:,2));
subplot(2,4,3),imshow(bit_matrix(:,:,3));
subplot(2,4,4),imshow(bit_matrix(:,:,4));
subplot(2,4,5),imshow(bit_matrix(:,:,5));
subplot(2,4,6),imshow(bit_matrix(:,:,6));
subplot(2,4,7),imshow(bit_matrix(:,:,7));
subplot(2,4,8),imshow(bit_matrix(:,:,8));
end