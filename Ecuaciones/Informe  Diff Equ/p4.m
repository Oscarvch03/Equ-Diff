clc
hold on
f=@(V)[V(1) - 0.5*V(1)*V(2), -0.75*V(2) + 0.25*V(1)*V(2)];
a = 0;
b = 50;
n = 1000;
h = (b-a)/n;

% Condiciones Iniciales

x0 = 3;
y0 = 4; 

x1 = 10;
y1 = 2;

x2 = 5;
y2 = 5;

x3 = 3;
y3 = 7;

z0 = [x0, y0];
z1 = [x1, y1];
z2 = [x2, y2];
z3 = [x3, y3];

[t1, xf1, yf1] = Runge_K2(f, a, b, z0, n);
[t2, xf2, yf2] = Runge_K2(f, a, b, z1, n);
[t3, xf3, yf3] = Runge_K2(f, a, b, z2, n);
[t4, xf4, yf4] = Runge_K2(f, a, b, z3, n);

% plot(xf1, yf1)
% plot(xf2, yf2)
% plot(xf3, yf3)
% plot(xf4, yf4)
% title('Depredador-Presa, Varias Condiciones Iniciales')
% xlabel('Presa')
% ylabel('Depredador')
% legend({'x0 = 3, y0 = 4', 'x0 = 10, y0 = 2', 'x0 = 5, y0 = 5', 'x0 = 3, y0 = 7'}, 'Location', 'northeast')
% saveas(gcf, 'p4_Resultados.png')


plot(t1, xf1,'g')
plot(t1, yf1,'b')
title('Depredador,Presa VS Tiempo, x0 = 3 & y0 = 4')
xlabel('0 <= t <= 50')
ylabel('Presa & Depredador')
legend({'Presa', 'Depredador'}, 'Location', 'northeast')
saveas(gcf, 'p4_xyVSt.png')
