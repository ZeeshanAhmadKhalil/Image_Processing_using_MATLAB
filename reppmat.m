A=[1 2;3 4]
B=[];
[m,n]=size(A);
for i=1:n
new_col = A(:,i);
B=[B new_col];
B=[B new_col];
end
B
% face=imread('255x175 coloured face.png');
% bw_face=rgb2gray(face);
% double_face=repmat(bw_face,[2 2]);
% imshow(double_face)