%% Matlab file for plotting the visualisation of the tangent seen on figure 2.1 in the report
close all
clear all
r=1;
v=pi/3;
th = 0:pi/50:2*pi;
xunit = r * cos(th);
yunit = r * sin(th);

% Plotting initial lines for all 3 triangles to make legends match the
% right color
plot([1 1],[0 tan(v)],'b','LineWidth',1.5)
hold on
plot([0 cos(v)], [0,sin(v)],'r--','LineWidth',2)
plot([0 cos(v)], [sin(v) sin(v)],'g--','LineWidth',2)

% Unit circle
plot(xunit, yunit,'k','LineWidth',2); 
yline(0,'k')
xline(0,'k')

% Plot red dots and corresponding text
plot(0,sin(v),'o', 'MarkerFaceColor', 'r','MarkerSize',10)
text(-0.37,sin(v),'sin(\theta)','FontSize',14)
plot(cos(v),0,'o', 'MarkerFaceColor', 'r','MarkerSize',10)
text(cos(v),-0.17,'cos(\theta)','FontSize',14)
plot(1,tan(v),'o', 'MarkerFaceColor', 'r','MarkerSize',10)
text(1.1,tan(v),'[1,tan(\theta)]','FontSize',14)
plot(cos(v),sin(v),'o', 'MarkerFaceColor', 'r','MarkerSize',10)
text(-0.37,tan(v),'tan(\theta)','FontSize',14)

% Tan triangle
%plot([1 1],[0 tan(v)],'b','LineWidth',1.5)
plot([0 1],[0 tan(v)],'b','LineWidth',1.5)
plot([0 1], [ 0 0],'b','LineWidth',1.5)

plot([0 1],[tan(v) tan(v)],'k--','LineWidth',1.2)
plot(0,tan(v),'o', 'MarkerFaceColor', 'r','MarkerSize',10)

% cos triangle
%plot([0 cos(v)], [0,sin(v)],'r--','LineWidth',2)
plot([cos(v) cos(v)], [0 sin(v)],'r--','LineWidth',2)
plot([0 cos(v)], [0 0],'r--','LineWidth',2)

% sin triangle
%plot([0 cos(v)], [sin(v) sin(v)],'g--','LineWidth',2)
plot([0 cos(v)], [0,sin(v)],'g--','LineWidth',2)
plot([0 0], [0,sin(v)],'g--','LineWidth',2)

text(0.15,0.1,'\theta','FontSize',14)

legend('Right-angled triangle for tan(\theta)','Right-angled triangle for cos(\theta)','Right-angled triangle for sin(\theta)','Location','southeast')

xlim([-1 2])
ylim([-1 2])