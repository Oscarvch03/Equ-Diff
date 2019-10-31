% metodod de Euler Mej
clc
hold on
f=@(t,y) -2*t*(y.^2);
a=0;
b=2;
n=10;
y0=1;
[u,v] = Euler_M(f,a,b,y0,n);
plot(u,v)

h=(b-a)/n
t=a:h:b;
w= 1 ./ (t.^2 + 1);
plot(u, w,'r')
error=max(abs(v-w))