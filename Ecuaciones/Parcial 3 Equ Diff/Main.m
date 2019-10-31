% Oscar Velasco // 30/10/2019

clc

% Parámetros del Modelo
a = 0.2;
b = 0.2;
c = 6.3; % fijo

% Condiciones Iniciales
x0 = 1;
y0 = 1;
z0 = 1;
v0 = [x0, y0, z0];

% Sistema de Ecuaciones
f=@(V)[-(V(2) + V(3)), V(1) + a*V(2), b + V(1)*V(3) - c*V(3)];

% Intervalo de Tiempo
a = 1;
b = 500;

% # de Saltos
n = 10000;

% Invocación del Método Runge Kutta
[t, xf, yf, zf] = Runge_K3(f, a, b, v0, n);

% Figura 1, x,y,z
figure 
plot3(xf, yf, zf)

% Figura 2, x(t) VS t
figure
plot(t, xf)

% figure
% plot(xf(7200:10000)) % Grafica solo la parte periodica

xf(9670)
xf(9082)
xf(8494)

T1 = t(9670) - t(9082)
T2 = t(9082) - t(8494)

% Con las condiciones iniciales, el intervalo de tiempo y el numero
% de saltos dados, el periodo T es 29.34