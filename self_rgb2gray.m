function[out_image]=self_rgb2gray(in_image)
    original=in_image;
    [r c com]=size(original);
    original1=double(original);
    bw=double(rand(r,c));
    for i=1:r
        for j=1:c
            bw(i,j)=original1(i,j,1)*0.3+original1(i,j,2)*0.59+original1(i,j,3)*0.11;
        end
    end
    out_image=uint8(bw);
end