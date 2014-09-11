clc
clear
close all

M2 = 4;
M1 = 0;
omega = -2*pi:0.001:2*pi;
H = (1/(M1+M2+1))*sin(omega*(M1+M2+1)/2).*exp(-1i*omega*(M2-M1)/2)./sin(omega/2);

f = figure;
box on;
plot(omega, abs(H), 'LineWidth', 2)
xlabel('\omega', 'FontSize', 22)
ylabel('|H(e^{j\omega})|', 'FontSize', 22)
set(gca, 'fontsize', 22)
xlim([min(omega),max(omega)])
saveas(f, 'eps/frmas_f.eps', 'eps2c')

g = figure;
box on;
plot(omega, angle(H), 'LineWidth', 2)
xlabel('\omega', 'FontSize', 22)
ylabel('\angle H(e^{j\omega})', 'FontSize', 22)
set(gca, 'fontsize', 22)
xlim([min(omega),max(omega)])
saveas(g, 'eps/frmas_a.eps',  'eps2c')
