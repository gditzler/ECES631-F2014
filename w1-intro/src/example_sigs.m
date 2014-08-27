clc
clear
close all

u = @(n) 1.0*(n>=0);
d = @(n) 1.0*(n==0);
n = -10:10;
a = .75;

h1 = figure;
hold on;
box on;
plot(n, u(n), 'bo', 'LineWidth', 2)
title('Unit Step Sequence','FontSize', 24)
set(gca, 'fontsize', 24)

h2 = figure;
hold on;
box on;
plot(n, d(n), 'bo', 'LineWidth', 2)
title('Impulse Sequence','FontSize', 24)
set(gca, 'fontsize', 24)

h3 = figure;
hold on;
box on;
plot(n, a.^n.*u(n), 'bo', 'LineWidth', 2)
title('Exponential Sequence','FontSize', 24)
set(gca, 'fontsize', 24)


h4 = figure;
hold on;
box on;
plot(n, cos(.5*n), 'bo', 'LineWidth', 2)
title('Cosine Sequence','FontSize', 24)
set(gca, 'fontsize', 24)


saveas(h1, 'eps/step_fcn.eps', 'eps2c')
saveas(h2, 'eps/impulse_fcn.eps', 'eps2c')
saveas(h3, 'eps/exp_fcn.eps', 'eps2c')
saveas(h4, 'eps/cos_fcn.eps', 'eps2c')