input_image=imread('475x630 ali nice.png');
filter=[0 0 0;
        0 1 0.4;
        0 0 0];
output_image=imfilter(input_image,filter,'conv','replicate','same');
subplot(1,2,1),imshow(input_image),title('Original');
subplot(1,2,2),imshow(output_image),title('Filtered');
