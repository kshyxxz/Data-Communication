clc;
clear all;
close all;

fs = 8000;
fm = 20;
fc = 500;
am = 1;
ac = 1;
beta = 10;
t = [0:0.1*fs]/fs;
m = am * cos(2*pi*fm*t);
c = ac * cos(2*pi*fc*t);
a = am/ac;
s = ac *cos(2*pi*fc*t+beta*sin(2*pi*fm*t)) ;
subplot(3,1,1);
plot(t,m);
xlabel('message - kshyxxz');
grid on;


subplot(3,1,2);
plot(t,c);
xlabel('carrier - kshyxxz');
grid on;                                                


subplot(3,1,3);
plot(t,s);
xlabel('modulated - kshyxxz');
grid on;