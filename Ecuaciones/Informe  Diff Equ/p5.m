clc
hold on
a1 = 1;
b1 = 1;

a2 = 3;
b2 = 1;

a3 = 1/3;
b3 = 1;

a4 = 1;
b4 = 3;

a5 = 1;
b5 = 1/3;

f1=@(V1)[a1*V1(1)*(1 - V1(2)*0.5), b1*V1(2)*(-1+V1(1)*(1/3))];
f2=@(V2)[a2*V2(1)*(1 - V2(2)*0.5), b2*V2(2)*(-1+V2(1)*(1/3))];
f3=@(V3)[a3*V3(1)*(1 - V3(2)*0.5), b3*V3(2)*(-1+V3(1)*(1/3))];
f4=@(V4)[a4*V4(1)*(1 - V4(2)*0.5), b4*V4(2)*(-1+V4(1)*(1/3))];
f5=@(V5)[a5*V5(1)*(1 - V5(2)*0.5), b5*V5(2)*(-1+V5(1)*(1/3))];

a = 0;
b = 50;
n = 350;
h = (b-a)/n;

x0 = 5;
y0 = 2;
z0 = [x0, y0];

[t1, xf1, yf1] = Runge_K2(f1, a, b, z0, n);
[t2, xf2, yf2] = Runge_K2(f2, a, b, z0, n);
[t3, xf3, yf3] = Runge_K2(f3, a, b, z0, n);
[t4, xf4, yf4] = Runge_K2(f4, a, b, z0, n);
[t5, xf5, yf5] = Runge_K2(f5, a, b, z0, n);

%for i=2:500
%    if (x0 == round(xf(i),3))
%        pos = i
%        x = xf(i)
%        y = yf(i)
%        Periodo = t(i)
%        break
%    end
%end


plot(xf1, yf1, 'g')
plot(xf2, yf2)
plot(xf3, yf3)
plot(xf4, yf4, 'o')
plot(xf5, yf5, 'o')

title('Depredador-Presa, x0 = 5 & y0 = 2, Secc 9.5/ Pto 9')
xlabel('Presa')
ylabel('Depredador')
legend({'a = 1, b = 1', 'a = 3, b = 1', 'a = 1/3, b = 1', 'a = 1, b = 3', 'a = 1, b = 1/3'}, 'Location', 'northeast')
saveas(gcf, 'p5_ResultadosVP.png')


%plot(t, xf,'g')
%plot(t, yf,'b')
%title('Depredador,Presa VS Tiempo, x0 = 10 & y0 = 2')
%xlabel('0 <= t <= 50')
%ylabel('Presa & Depredador')
%legend({'Presa', 'Depredador'}, 'Location', 'northeast')
%saveas(gcf, 'p4_xyVSt.png')