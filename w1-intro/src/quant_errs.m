clc;
clear;
close all;

B = 1;
quant = @(n) round(n*(10^B))/(10^B);

fs = 500;
f = 10;
n = 1:50;


y = .5*cos(2*pi*f*n/fs);
yp = quant(y);
e = y - yp;

h = figure; 
hold on 
box on
stem(n, yp, 'r', 'LineWidth', 2)
plot(n, y, 'b', 'LineWidth', 2)
plot(n, e, 'g', 'LineWidth', 2)
legend('x[n]','x(t)','e(t)','Location', 'best')
set(gca, 'fontsize', 22)