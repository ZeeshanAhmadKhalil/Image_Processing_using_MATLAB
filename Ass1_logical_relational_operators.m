A=[11 11 11;22 22 22];
B=[11 11 11;22 22 22];
C=[22 22 22;22 23 23];
if(A==B)
    disp('A==B')
elseif(A<B)
        disp('A<B')
else(A>B)
    disp('A>B')
end
if(A==C)
    disp('A==C')
elseif(A<C)
        disp('A<C')
elseif(A>C)
    disp('A>C')
end
if(A==C)
    disp('A==C')
elseif(A~=C)
    disp('A~=C')
end
if(A|B|C)
    disp('A|B|C is equal logocally elementwise')
end
if(A&B&C)
    disp('A&B&C is equal logocally elementwise')
end
a=10;
b=20;
c=30;
if(a<b&&(a+b)==c&&a~=c||a>(b+c)&&a==c) %(10<20&&30==30&&10~=30||10>50&&10==30)
    disp('true');                      %(true&&true&&true||false&&false)
else                                   %(true||false)
    disp('false');                     %true
end

    