clc
f=@(V)[V(1) - 0.5*V(1)*V(2), -0.75*V(2) + 0.25*V(1)*V(2)];
a = 0;
b = 10;
n = 200;
h = (b-a)/n;

x0 = 3;
y0 = 4;
z0 = [x0, y0];

zf = Runge_K_DP(f, a, b, z0, n);
t=a:h:b;

xf = zeros(1, n+1);
yf = zeros(1, n+1);
for i=1:length(t)
    zf = Runge_K_DP(f, a, t(i), z0, n);
    xf(i) = zf(1);
    yf(i) = zf(2);
end
plot(xf, yf)