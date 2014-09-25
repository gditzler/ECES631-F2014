clc;
clear;
close all;

n = -5:1:15;
u = @(n) 1.0*(n >= 0);
h = (.5).^n.*u(n) - .25*(.5).^n.*u(n-1);

g = figure;
hold on;
box on;
stem(n, h, 'LineWidth', 2);
set(gca, 'fontsize', 22);
xlabel('n','FontSize', 22);
ylabel('h[n]', 'FontSize', 22);
saveas(g,'eps/hn_example.eps', 'eps2c');