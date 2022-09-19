clc;
clear all;
close all;
t=-10:10;
x=[t==0];
subplot(3,1,1);
stem(t,x);
xlabel('n');
ylabel('x');
title('Unit sample sequence');

y=[(t>=0)==1];
subplot(3,1,2);
stem(t,y);
xlabel('time');
ylabel('amplitude');
title('Unit step signal');

k=[(((t>=0)==1).*t)];
subplot(3,1,3);
stem(t,k);
xlabel('time');
ylabel('amplitude');
title('Unit ramp signal');


