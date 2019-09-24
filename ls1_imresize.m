function[resized]=ls1_imresize(original,size_)
[R,C,com]=size(original);
original=double(original);
R_=size_(1);
C_=size_(2);
resized=rand(R_,C_,com);
Sr=R/R_;
Sc=C/C_;
r_=meshgrid(1:R_,1);
c_=meshgrid(1:C_,1);
rf=Sr*r_;
cf=Sc*c_;
ro=floor(rf);
co=floor(cf);
ro(ro<1)=1;
co(co<1)=1;
ro(ro>=R)=R-1;
co(co>=C)=C-1;
del_r=rf-ro;
del_c=cf-co;
for h=1:com
    for i=1:R_
        for j=1:C_
            resized(i,j,h)=original(ro(i),co(j),h)*(1-del_r(i))*(1-del_c(j))+...
                         original(ro(i)+1,co(j),h)*(del_r(i))*(1-del_c(j))+...
                         original(ro(i),co(j)+1,h)*(1-del_r(i))*(del_c(j))+...
                         original(ro(i)+1,co(j)+1,h)*(del_r(i))*(del_c(j));
        end
    end
end
resized=uint8(resized);
original=uint8(original);
figure,imshow(original),title('original'),figure,imshow(resized),title('Transformed');
end