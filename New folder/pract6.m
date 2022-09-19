clc;
clear all;
close all;
n1=-2:1;
n2=0:3;
n3=-1:2;
x=[1,2,3,4];
y=[1,1,1,1];
z=[2,-3,0,-4];
range=min(min(n1),min(n2)):max(max(n1),max(n2));
y1=[];
t=1;
for i=1:length(range)
    if (range(i)<min(n1)||range(i)<max(n1))
        y1=[y1 0];
    else
        y1=[y1 x(t)];
        t=t+1;
    end
end
y2=[];
a=1;
for i=1:length(range)
    if (range(i)<min(n2)||range(i)<max(n2))
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

y3=y1.*y2;
subplot(5,1,3);
stem(range,y3);
xlabel('n..');
ylabel('Amplitude');
title('Multiplication of Signal');
grid on;

subplot(5,1,4);
stem(n3,z);
xlabel('n..');
ylabel('Amplitude');
title('Z-Signal');
grid on;

n=n3+2;
subplot(5,1,5);
stem(n,z);
xlabel('n..');
ylabel('Amplitude');
title('Shifting Signal');
grid on;