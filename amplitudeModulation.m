clc;
clear all;
close all;

fs = 8000;
fm = 20;
fc = 500;
am = 1;
ac = 1;
t = [0:0.1*fs]/fs;
m = am * cos(2*pi*fm*t);
c = ac * cos(2*pi*fc*t);
a = am/ac;
s1 = ac * [1 + a * cos(2*pi*fm*t)].*cos(2*pi*fc*t);
subplot(3,3,1:3);
plot(t,m);
xlabel('time');
ylabel('amplitude');
grid on;


subplot(3,3,4:6);
plot(t,c);
xlabel('carrier signal');
grid on;                                              

subplot(3,3,7);
plot(t,s1);
xlabel('perfectly modulated');
grid on;

a = 0.5
s1 = ac * [1 + a * cos(2*pi*fm*t)].*cos(2*pi*fc*t);
subplot(3,3,8);
plot(t,s1);
xlabel('under modulated');
grid on;

a = 2
s1 = ac * [1 + a * cos(2*pi*fm*t)].*cos(2*pi*fc*t);
subplot(3,3,9);
plot(t,s1);
xlabel('over modulated');
grid on;