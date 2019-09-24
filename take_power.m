function[powered]=take_power(original,power)
original=double(original);
powered=original.^power;
powered=mat2gray(powered);
original=mat2gray(original);
subplot(1,2,1),imshow(original),title('original'),subplot(1,2,2),imshow(powered),title('Transformed');
msgbox('chk the difference in brightness');
end