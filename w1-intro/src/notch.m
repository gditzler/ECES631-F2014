clc
clear
close all

z = [1i;-1i];
p = .9*[1i;-1i];
[b,a] = zp2tf(z,p,1);

[hf,wf] = freqz(b,a,'whole',2001);


h1 = figure;
axis square
hold on
box on
plot(sin(0:.01:2*pi),cos(0:.01:2*pi), 'r-', 'LineWidth',2)
plot(real(z),imag(z), 'o', 'LineWidth', 6)
plot(real(p),imag(p), 'x', 'LineWidth', 6)
xlim([-1.25,1.25])
ylim([-1.25,1.25])
title('What Do I Do?','FontSize',22)
set(gca, 'fontsize', 22)



h2 = figure; 
hold on;
box on
axis square
plot(wf/pi,20*log10(abs(hf)), 'b-', 'LineWidth',2)
xlim([0,1])
xlabel('normalize frequency','FontSize',22)
ylabel('gain (dB)','FontSize',22)
set(gca, 'fontsize', 22)

saveas(h1,'eps/notch_zp.eps','eps2c')
saveas(h2,'eps/notch_freq.eps','eps2c')
