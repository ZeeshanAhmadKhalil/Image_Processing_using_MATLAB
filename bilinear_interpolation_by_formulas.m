original=imread('255x175 coloured face.png');
bw=rgb2gray(original);
R_=500;
C_=250;
[R, C]=size(bw);
interpolated=rand(R_,C_);
Sr=R/R_;
Sc=C/C_;
r_=meshgrid(1:R_,1);
c_=meshgrid(1:C_,1);
Rf=r_*Sr;
Cf=c_*Sc;
Ro=floor(Rf);
Co=floor(Cf);
del_R=Rf-Ro;
del_C=Cf-Co;
Ro(Ro<1)=1;
Co(Co<1)=1;
Ro(Ro>R)=R;
Co(Co>C)=C;
bw=double(bw);
for i=1:R_
   for j=1:C_
        i_plus=i+1;
        j_plus=j+1;
        i_plus(i_plus>R_)=R_;
        j_plus(j_plus>C_)=C_;
        interpolated(i,j)=(bw(Ro(i),Co(j))*(1-del_R(i))*(1-del_C(j)))+...
                          (bw(Ro(i_plus),Co(j))*(del_R(i))*(1-del_C(j)))+...
                          (bw(Ro(i),Co(j_plus))*(1-del_R(i))*(del_C(j)))+...
                          (bw(Ro(i_plus),Co(j_plus))*(del_R(i))*(del_C(j)));
   end 
end
interpolated=uint8(interpolated);
imshow(interpolated)
