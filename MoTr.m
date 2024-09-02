function dy = MoTr(t,y)

% Parámetros
m1 = 290;
b1 = 1000;
m2 = 59;
k1 = 16182;
f = 0;
k2 = 19000;
z1 = .05*sin(.5*pi*t);
z2 = .05*sin(20*pi*t);

% Vector de los estados
dy = zeros(4,1);

% Definición dinámica del sistema
dy(1) = y(2);
dy(2) = ((1/m1)*(f-b1*y(2)+b1*y(4)-k1*y(1)+k1*y(3)));
dy(3) = y(4);
dy(4) = ((1/m2)*(-f+k2*z1+b1*y(2)-b1*y(4)+k1*y(1)-(k1+k2)*y(3)));