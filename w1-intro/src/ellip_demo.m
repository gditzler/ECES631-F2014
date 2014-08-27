% examine the effects of quantization on an elliptic filter
clc;
clear;
close all;

B = 4;
quant = @(n) round(n*(10^B))/(10^B);

[z,p,k] = ellip(12,3,50,300/500);
sos = zp2sos(z,p,k);
[b,a] = sos2tf(sos);
b1 = quant(b);
a1 = quant(a);
[z1,p1] = tf2zp(b1,a1);

[hf,wf] = freqz(b,a,'whole',2001);
[hf1,wf1] = freqz(b1,a1,'whole',2001);


h1 = figure;
axis square
hold on
box on
plot(sin(0:.01:2*pi),cos(0:.01:2*pi), 'r-', 'LineWidth',2)
plot(real(z),imag(z), 'o', 'LineWidth',2)
plot(real(p),imag(p), 'x', 'LineWidth',2)
xlim([-1.25,1.25])
ylim([-1.25,1.25])
title('Stable Elliptic Filter','FontSize',22)
set(gca, 'fontsize', 22)

h2 = figure;
axis square
hold on
box on
plot(sin(0:.01:2*pi),cos(0:.01:2*pi), 'r-', 'LineWidth',2)
plot(real(z1),imag(z1), 'o', 'LineWidth',2)
plot(real(p1),imag(p1), 'x', 'LineWidth',2)
xlim([-1.25,1.25])
ylim([-1.25,1.25])
title('Quantized Elliptic Filter','FontSize',22)
set(gca, 'fontsize', 22)

h3 = figure; 
hold on;
box on
axis square
plot(wf/pi,20*log10(abs(hf)), 'b-', 'LineWidth',2)
plot(wf1/pi,20*log10(abs(hf1)), 'r-', 'LineWidth',2)
xlim([0,1])
ylim([-100,5])
xlabel('normalize frequency','FontSize',22)
ylabel('gain (dB)','FontSize',22)
legend('Original', 'Quantized')
set(gca, 'fontsize', 22)

h4 = figure; 
hold on;
box on
axis square
plot(wf/pi,angle(hf), 'b-', 'LineWidth',2)
plot(wf1/pi,angle(hf1), 'r-', 'LineWidth',2)
xlim([0,1])
% ylim([-100,5])
xlabel('normalize frequency','FontSize',22)
ylabel('phase (radians)','FontSize',22)
legend('Original', 'Quantized')
set(gca, 'fontsize', 22)

saveas(h1,'eps/ellip_pz_stable.eps','eps2c')
saveas(h2,'eps/ellip_pz_unstable.eps','eps2c')
saveas(h3,'eps/ellip_freq.eps','eps2c')
saveas(h4,'eps/ellip_phase.eps','eps2c')
