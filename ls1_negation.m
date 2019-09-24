function[negative]=ls1_negation(original)
negative=max(original(:))-original;
subplot(1,2,1),imshow(original),title('original'),subplot(1,2,2),imshow(negative),title('Transformed');
end