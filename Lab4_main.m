clear;
clc;
close all;
[x, Fs] = audioread('DTMF.wav');
figure;
plot(x);
grid on;
x1 = x(54000:54000+2047);
X1 = fft(x1);
figure;
plot((0:2047)*Fs/2048, abs(X1));
grid on;