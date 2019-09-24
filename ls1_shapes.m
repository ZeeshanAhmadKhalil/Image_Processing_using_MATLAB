function[disk,diamond,square]=ls1_shapes(N)
r=N-(uint8(N/2));
if(rem(N,2)==1&&N>=5)
    disk=zeros(N,N);
    diamond=zeros(N,N);
    square=zeros(N,N);
    c1=(N+1)/2;
    c2=c1;
    for x=1:N
        for y=1:N
            [De,D4,D8]=ls1_distances([x,y],[c1,c2]);
            if(De<=r)
                disk(x,y)=De;
            end
            if(D4<=r)
                diamond(x,y)=D4;
            end
            if(D8<=r)
                square(x,y)=D8;
            end
        end
    end
    disk=uint8(disk);
else
    square=[];
    diamond=[];
    disk=[];
    msgbox('N should be odd and greater than 5');
end