%housekeeping
clc, clear all, close all;

%Problem A
x = 0:0.1:10;
y1 = x.^2;
y2 = 2.^x;

%plot y1
subplot(3,2,1);
plot(x,y1);
subplot(3,2,3);
semilogy(x, y1,'--rs');
subplot(3,2,5);
loglog(x, y1,'--gd');

%plot y2's
subplot(3,2,2);
plot(x, y2);
subplot(3,2,4);
semilogy(x, y2,'--rs');
subplot(3,2,6);
loglog(x, y2,'--gd');

%%
%Problem 2

clear all; close all; clc;
t = 0:30;
p = 100*0.82.^t;
semilogy(t,p,'linewidth',4);