A=[1,2,3,4,5];
B=[5,4,3,2,1];
if(A>B)
    disp('A>B')
elseif(A<B)
    disp('A<B')% in matlab it is not nesseary that one of them is true
elseif(A==B)
    disp('A==B')
end
for i=1:10
    i
end
a=1;
while(true)
    a=a+1
    if(a<10)
        continue
    else
        break
    end
end
try
    c=1/0
catch
    disp('it will give infinity');
end
C=[1 2]
D=[1 2 3]
try
    E=C+D
catch
    disp('C & D have different orders');
end
character=char('k');
switch character
    case 'a'
        disp('its a')
    case 'e'
       disp('its e')
    case 'i'
        disp('its i')
    case 'o'
        disp('its o')
    case 'u'
        disp('its u')
    otherwise
        disp('its not a vowel')
end
% return is used to get back from the fnction
        
    