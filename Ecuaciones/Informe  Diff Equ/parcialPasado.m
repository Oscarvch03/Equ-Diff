clc
sigma = 15;
b = 8/3;
r = 28;
v0 = [1, 1, 1];
f=@(V)[-1*sigma*V(1) + sigma*V(2), r*V(1) - V(2) - V(1)*V(3), -1*b*V(3) + V(1)*V(2)];
a = 1;
b = 50;
n = 1000;
h = (b-a)/n;

[t, xf, yf, zf] = Runge_K3(f, a, b, v0, n);
plot3(xf, yf, zf)
