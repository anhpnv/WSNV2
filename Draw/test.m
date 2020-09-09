clear all;
close all;
clc;
figure(1);
load('DFCR.mat');
y = DEAD(1:100:length(DEAD))
x = (1:100:length(DEAD))
h1 = plot(x, 100- y, 'bo-','MarkerFaceColor','blue');
set(h1,'LineWidth',2);
hold on;
load('Dijkstra.mat');
y = DEAD(1:150:length(DEAD));
y(length(y)+1) = 100;
x = (1:150:length(DEAD));
x(length(x)+1) = x(length(x))+1;
h2 = plot(x,100-y,'gs-','MarkerFaceColor','green');
set(h2,'LineWidth',2);
load('Greedy.mat');
y = DEAD(1:200:length(DEAD));
x = (1:200:length(DEAD));
y(length(y)+1) = 100;
x(length(x)+1) = x(length(x)) + 1;
h3 = plot(x,100-y,'r^-','MarkerFaceColor','red');
load('Fuzzy_routing.mat');
y = DEAD(1:220:length(DEAD));
x = (1:220:length(DEAD));
y(length(y)+1) = 100;
x(length(x)+1) = x(length(x)) + 1;

h3 = plot(x,100-y,'r^-','Color',[0,0.7,0.9]);
set(h3,'LineWidth',2);
ylabel('Number of alive sensor node');
xlabel('Rounds');
grid on;
hold off;
legend('DFCR','Dijkstra','Greedy','Greedy Fuzzy');

set(gca,'GridLineStyle','--');
ylabel('Number of alive sensor node','FontWeight','bold','FontAngle','italic');
xlabel('Rounds','FontWeight','bold','FontAngle','italic');
set(gca,'FontWeight','bold');

