function[loged]=explore_dark_areas(original)
original1=double(original);
loged=log(original1+1);
loged=mat2gray(loged);
loged=10.^(loged);
loged=mat2gray(loged);
subplot(1,2,1),imshow(original),title('original'),subplot(1,2,2),imshow(loged),title('Transformed');
msgbox('Drak areas can be seen in transformed image & brightness is increased');
end