clear all;
close all;
clc;
figure(1);
load('DFCR_scen1.mat');
y = DEAD(1:97:length(DEAD))
x = (1:97:length(DEAD))
h1 = plot(x, 100- y, 'bo-','MarkerFaceColor','blue');
set(h1,'LineWidth',2);
hold on;
load('Dijkstra_scen1.mat');
y = DEAD(1:150:length(DEAD))
y(length(y)+1) = 100;
x = (1:150:length(DEAD))
x(length(x)+1) = x(length(x))+1;
h2 = plot(x,100-y,'gs-','MarkerFaceColor','green');
set(h2,'LineWidth',2);
load('Greedy_scen1.mat');
y = DEAD(1:200:length(DEAD))
x = (1:200:length(DEAD))
y(length(y)+1) = 100;
x(length(x)+1) = x(length(x)) + 1;

h3 = plot(x,100-y,'r^-','MarkerFaceColor','red');
set(h3,'LineWidth',2);
ylabel('Number of alive sensor node','FontWeight','bold','FontAngle','italic');
xlabel('Rounds','FontWeight','bold','FontAngle','italic');
grid on;
hold off;
legend('DFCR','Dijkstra','Greedy');
axis
set(gca,'GridLineStyle','--');
set(gca,'FontWeight','bold');
