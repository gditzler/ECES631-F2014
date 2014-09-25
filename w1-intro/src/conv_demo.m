clc
clear
close all

u = @(n) 1.0*(n>=0);
d = @(n) 1.0*(n==0);
n = -10:10;
m = -20:20;
a = .75;
f = @(n) a.^n.*u(n);

h = conv(u(n), f(n));

h1 = figure;
hold on;
box on;
plot(n, u(n), 'bo', 'LineWidth', 2)
plot(n, f(n), 'ro', 'LineWidth', 2)
legend({'u[n]', 'a^n u[n]'})
set(gca, 'fontsize', 24)

h2 = figure;
hold on;
box on;
plot(n, u(n), 'bo', 'LineWidth', 2)
plot(n, f(-n), 'go', 'LineWidth', 2)
plot(m, h, 'r*', 'LineWidth', 2)
legend({'u[n]', 'a^n u[n] flipped','conv(x,f)'},'Location','best')
set(gca, 'fontsize', 24)

saveas(h1,'eps/conv_00.eps','eps2c')
saveas(h2,'eps/conv_01.eps','eps2c')


d = 3;
h = conv(u(n), u(n-d));

h3 = figure;
hold on;
box on;
plot(n, u(n-d), 'bo', 'LineWidth', 2)
plot(n, u(n), 'ro', 'LineWidth', 2)
legend({'u[n-3]', 'u[n]'})
set(gca, 'fontsize', 24)

h4 = figure;
hold on;
box on;
plot(n, u(n-d), 'bo', 'LineWidth', 2)
plot(n, u(-n), 'go', 'LineWidth', 2)
plot(m, h/12, 'r*', 'LineWidth', 2)
legend({'u[n]', 'u[n-3] flipped','conv(x,f)/12'},'Location','best')
set(gca, 'fontsize', 24)

saveas(h3,'eps/conv_02.eps','eps2c')
saveas(h4,'eps/conv_03.eps','eps2c')
