clc
clear
close all

ta = 0:1/4000:2/60; % analog time axis
xa1 = cos(2*pi*60*ta+pi/3);
xa2 = cos(2*pi*340*ta-pi/3);
xa3 = cos(2*pi*460*ta+pi/3);
tn = 0:1/400:2/60; % discrete-time axis as n*Ts
xn1 = cos(2*pi*60*tn+pi/3);
xn2 = cos(2*pi*340*tn-pi/3);
xn3 = cos(2*pi*460*tn+pi/3);

h = figure;
hold on 
box on
plot(ta, xa1, 'b', 'LineWidth', 2)
stem(tn, xn1, 'g', 'LineWidth', 2)
xlim([min(ta),max(ta)])
xlabel('time','FontSize',22)
title('f_1=60Hz, f_s=400Hz','FontSize',22)
set(gca, 'fontsize', 22)
saveas(h, 'alias01.eps', 'eps2c')

h = figure;
hold on 
box on
plot(ta, xa2, 'b', 'LineWidth', 2)
stem(tn, xn2, 'g', 'LineWidth', 2)
xlim([min(ta),max(ta)])
title('f_1=340Hz, f_s=400Hz','FontSize',22)
xlabel('time','FontSize',22)
set(gca, 'fontsize', 22)
saveas(h, 'alias02.eps', 'eps2c')

h = figure;
hold on 
box on
plot(ta, xa3, 'b', 'LineWidth', 2)
stem(tn, xn3, 'g', 'LineWidth', 2)
title('f_1=460Hz, f_s=400Hz','FontSize',22)
xlim([min(ta),max(ta)])
xlabel('time','FontSize',22)
set(gca, 'fontsize', 22)
saveas(h, 'alias03.eps', 'eps2c')