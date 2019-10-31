function [t, y] = Euler_M(f, a, b, y0, n)
t = zeros(1, n+1);
y = zeros(1, n+1);
t(1) = a;
y(1) = y0;
h = (b-a) / n;
for i = 1:n
    t(i+1) = t(i) + h;
    fi = f(t(i),y(i));
    fih = f(t(i)+h, y(i)+h*fi);
    % pag 453 book
    y(i+1) = y(i)+((fi+fih)*(1/2)*h);
end
end