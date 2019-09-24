function[out_img]=lab_sess1_interpolation(in_img,in_pixels)
R_=in_pixels(1);
C_=in_pixels(2);
out_img=rand(R_,C_);
[R,C,com]=size(in_img);
Sr=R/R_;
Sc=C/C_;
r_=meshgrid(1:R_,1);
c_=meshgrid(1:C_,1);
Rf=Sr*r_;
Cf=Sc*c_;
Ro=floor(Rf);
Co=floor(Cf);
Ro(Ro<=0)=1;
Co(Co<=0)=1;
Ro(Ro>=R)=R-1;
Co(Co>=C)=C-1;
del_R=Rf-Ro;
del_C=Cf-Co;
for h=1:com
for i=1:R_
    for j=1:C_
        out_img(i,j,h)=in_img(Ro(i),Co(j),h)*(1-del_R(i))*(1-del_C(j))+...
                     in_img(Ro(i)+1,Co(j),h)*(del_R(i))*(1-del_C(j))+...
                     in_img(Ro(i),Co(j)+1,h)*(1-del_R(i))*(del_C(j))+...
                     in_img(Ro(i)+1,Co(j)+1,h)*(del_R(i))*(del_C(j));
    end
end
end
out_img=uint8(out_img);
end