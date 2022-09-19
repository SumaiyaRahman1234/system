clc;
clear all;
close all;
f=-2:0.01:2;
x=4*sinc(4*f);
subplot(3,1,1);
plot(f,real(x));
xlabel('Frequency');
title('Real part');

subplot(3,1,2);
plot(f,abs(x));
xlabel('Frequency');
title('Magnitude part');

subplot(3,1,3);
plot(f,angle(x));
xlabel('Frequency');
title('Phase part');



