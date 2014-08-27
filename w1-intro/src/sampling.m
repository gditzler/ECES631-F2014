clc
clear
close all

f0 = 10;
fs = 1000;
n = 1:100;
y = 5*cos(2*pi*f0*n/fs);

f1 = figure;
box on;
plot(n/fs, y, 'LineWidth', 2);
set(gca, 'fontsize', 20)

f2 = figure;
box on;
stem(n/fs, y, 'LineWidth', 2);
set(gca, 'fontsize', 20)

f3 = figure;
box on;
stem(n, 128*(5+round(y))/10, 'LineWidth', 2);
set(gca, 'fontsize', 20)

f4 = figure;
box on;
plot(n/fs, round(y), 'LineWidth', 2);
set(gca, 'fontsize', 20)

saveas(f1, 'eps/sampling_p0.eps','eps2c');
saveas(f2, 'eps/sampling_p1.eps','eps2c');
saveas(f3, 'eps/sampling_p2.eps','eps2c');
saveas(f4, 'eps/sampling_p3.eps','eps2c');