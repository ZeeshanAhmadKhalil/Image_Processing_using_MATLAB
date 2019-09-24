function[powered]=ls1_adjust_brightness(original,power)
original=double(original);
powered=original.^(power);
powered=mat2gray(powered);
original=mat2gray(original);
subplot(1,2,1),imshow(original),title('original'),subplot(1,2,2),imshow(powered),title('Transformed');
end