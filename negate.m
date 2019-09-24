function[negative]=negate(original)
negative=max(original(:))-original;
subplot(1,2,1),imshow(original),title('original'),subplot(1,2,2),imshow(negative),title('Transformed');
end