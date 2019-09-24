coloured=imread('35x30 coloured.jpg');
image_stats(coloured)
function s=image_stats(a)% this is a structure
s.image_size=size(a);
s.Average_values=mean2(a);
s.Rows=mean(a,2);
s.Cols=mean(a,1);
end


