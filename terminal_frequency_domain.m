f=[12  56;
   16 18];
F=fft2(f);
f=ifft2(F);
Fc=fftshift(F) 