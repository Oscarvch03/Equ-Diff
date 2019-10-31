function [t, yf] = Runge_Kutta(f, a, b, y0, n)
t = zeros(1, n+1);
yf = zeros(1, n+1);
t(1) = a;
yf(1) = y0;
h = (b-a) / n;
for i = 1:n
    t(i+1) = t(i) + h;
    k1 = f(t(i), yf(i));
    k2 = f(t(i)+0.5*h, yf(i)+0.5*k1*h);
    k3 = f(t(i)+0.5*h, yf(i)+0.5*k2*h);
    k4 = f(t(i)+h, yf(i)+k3*h);
    yf(i+1) = yf(i) + (1/6)*h*(k1+2*k2+2*k3+k4);
end
end