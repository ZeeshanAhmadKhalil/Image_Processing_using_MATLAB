A=logical([1,2,3,4,5;6,7,8,9,10]);% all data types blow could be applied to matrices of nxn order
D=double(112.22);
S=single(1.22);
U=uint64(122324324353456564566);
U=uint32(U);
U=uint16(U);% it will convert to that max number which can be represented in 16 bits unlike C++
U=uint8(U);
U=uint64(U);% again we can't convert it to the real value
I=int64(-1234567899876543211);
I=int32(I);
I=int16(I);
I=int8(I);% same as uint but it will have more short range bcz of singed num as it takes 1 bit
I=int64(I);
C=char('$$Zeeshan$$');%it could store whole string in char