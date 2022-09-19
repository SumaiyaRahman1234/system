clc;
clear all;
close all;
A=5;
f=100;
T=1/f;
t=0:T/100:2*T;
n=1:40;
y=A*sin(2*pi*f*t);
subplot(4,1,1);
plot(t,y);
xlabel('time');
ylabel('Amplitude');
title('Continuous time message signal');

y1=A*(sin(2*pi*f*(0.001)*n));
subplot(4,1,2);
stem(n,y1);
xlabel('n...');
ylabel('Amplitude');
title('Discrete time signal after sampling');

y2=A+y1;
subplot(4,1,3);
stem(n,y2);
xlabel('n...');
ylabel('Amplitude');
title('Dc level+Discrete time signal ');

y3=round(y2);
subplot(4,1,4);
stem(n,y3);
xlabel('n...');
ylabel('Amplitude');
title('Quantization');
 
y4=dec2bin(y3);
disp('binary information');
disp(y4);






