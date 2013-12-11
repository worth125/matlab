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

%%
clc, clear all, close all;


%get/set data
load data;
labels = {'Drainage Area (sq. miles)', 'Bankfull discharge (cfs)','XS area (sq. ft)', 'Width (ft.)','Depth (ft.)'};
x = drainage(:,1);
x2 = [min(x) max(x)];
yval = [max(drainage(:,3)) max(drainage(:,4)) max(drainage(:,5)) min(drainage(:,3)) min(drainage(:,4)) min(drainage(:,5))];

%plot pts and bestfit lines for each data set
%Area
set(figure, 'Position', [1 1 375 500]);
loglog(x, drainage(:,3),'bs');

hold on;
%plottools;
loglog(x, 0.96*x.^0.3, 'k'); 
areastr = sprintf('A = 12.38x^0.75\nR^2 = 0.95');
h =text(x2(1), yval(1)-100, areastr);
set(h, 'EdgeColor','k','fontWeight', 'bold');

%set lables
xlabel('Drainage Area (sq. mi.)');
ylabel('Depth (ft.) / Width (ft.) / Area (sq. ft.)');
%width
loglog(x, drainage(:,4),'gs');
loglog(x, 13.1*x.^(0.44), 'k');
widthstr = sprintf('W = 13.1x^0.44\nR^2 = 0.91');
h = text(x2(2), yval(2)-100, widthstr);
set(h, 'EdgeColor','k','fontWeight', 'bold');

%depth
loglog(drainage(:,1), drainage(:,5),'rs');
loglog(x, 12.21*x.^0.75,'k');
depthstr = sprintf('D: 0.96x^0.30\n R^2 = 0.87');
h = text(x2(1), yval(3), depthstr);
set(h, 'EdgeColor','k','fontWeight', 'bold');


set(gca,'minorGridLineStyle',':', 'xMinorGrid','on','yMinorGrid','on');
