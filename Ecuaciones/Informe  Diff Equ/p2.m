clc
hold on 
f=@(t,y) (2*y) + 1;
a=0;
b=2;
n=10;
y0=3;
[u1,v1] = Euler(f,a,b,y0,n);
[u2,v2] = Euler_M(f,a,b,y0,n);
[u3,v3] = Runge_Kutta(f,a,b,y0,n);

h=(b-a)/n
t=a:h:b;
w= -(1/2) + (7/2)*exp(2*t);

% Resultados
plot(u1,v1,'b')
plot(u2,v2,'r')
plot(u3,v3,'g')
plot(t, w,'p')
title('Euler, Euler Mejorado & Runge Kutta VS Tiempo')
xlabel('0 <= t <= 2')
ylabel('Soluciones Métodos y Analítica')
legend({'Euler', 'Euler Mejorado', 'Runge Kutta', 'Analítica'}, 'Location', 'northwest')
saveas(gcf, 'p2_Resultados_n10.png')
errorE=max(abs(v1-w))
errorEM=max(abs(v2-w))
errorRK=max(abs(v3-w))

% Error Total
errorE=abs(v1-w);
errorEM=abs(v2-w);
errorRK=abs(v3-w);
%plot(t,errorE)
%plot(t,errorEM)
%plot(t,errorRK)
%title('ERROR: Euler, Euler Mejorado & Runge Kutta VS Tiempo')
%xlabel('0 <= t <= 2')
%ylabel('Error Métodos')
%legend({'Euler', 'Euler Mejorado', 'Runge Kutta'}, 'Location', 'northwest')
%saveas(gcf, 'p2_Error_n50.png')
