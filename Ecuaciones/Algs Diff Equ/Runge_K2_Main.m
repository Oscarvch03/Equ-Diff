clc
hold on
f=@(V)[V(1) - 0.5*V(1)*V(2), -0.75*V(2) + 0.25*V(1)*V(2)];
a = 0;
b = 50;
n = 1000;
h = (b-a)/n;

x0 = 3; % 3
y0 = 4; % 4
z0 = [x0, y0];

[t, xf, yf] = Runge_K2(f, a, b, z0, n);
plot(xf, yf)
%plot(t, xf)
%plot(t, yf)
