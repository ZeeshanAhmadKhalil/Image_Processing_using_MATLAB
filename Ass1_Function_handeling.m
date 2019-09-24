f=@sin;%now f will act as sin
a=f(pi/4);
g=@(x) x.^2;
b=g(6);
h=@(x,y) sqrt(x.^2+y.^2);
c=h(2,2);
i=@(x,y,z) (sqrt(x)+sqrt(y)+sqrt(z)).^3;
d=i(1,2,3)