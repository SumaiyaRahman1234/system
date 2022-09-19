clc;
clear all;
close all;
n1=-2:1;
n2=0:3;
n3=-1:2;
x=[1,2,3,4];
y=[1,1,1,1];
z=[2,-3,0,-4];
m=min(min(n1),min(n2)):max(max(n1),max(n2));
y1=[];
t=1;
for i=1:length(m)
    if (m(i)<min(n1)||m(i)<max(n1))
        y1=[y1 0];
    else
        y1=[y1 x(t)];
        t=t+1;
    end
end
y2=[];
a=1;
for i=1:length(m)
    if (m(i)<min(n2)||m(i)<max(n2))
        y2=[y2 0];
    else
        y2=[y2 y(a)];
        a=a+1;
    end
end
subplot(5,1,1);
stem(n1,x);
xlabel('n..');
ylabel('Amplitude');
title('X-Signal');
grid on;

subplot(5,1,2);
stem(n2,y);
xlabel('n..');
ylabel('Amplitude');
title('Y-Signal');
grid on;

y3=y1+y2;
subplot(5,1,3);
stem(m,y3);
xlabel('n..');
ylabel('Amplitude');
title('Addition of Signal');
grid on;
subplot(5,1,4);
stem(n3,z);
xlabel('n..');
ylabel('Amplitude');
title('Z-Signal');
grid on;

y4=(-1).*n3;
subplot(5,1,5);
stem(y4,z);
xlabel('n..');
ylabel('Amplitude');
title('Folding Signal');
grid on;