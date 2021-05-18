%% Matlab file for plotting the tangent function as seen in figure 2.2
close all
clear all

set(0,'defaultTextInterpreter','tex');

% Define a linspace for one period of tangent
p = pi/2;
x=linspace(-p*0.99,p*0.99,1000);

% Plot the first period of the tangent function
plot(x,tan(x),'r','LineWidth',2)
hold on
plot([pi/4 pi/4],[0 1],'b--','LineWidth',1.5)

% Plot 4 additional periods of the tangent function
for i = [-2*pi -pi pi 2*pi]
    plot(x-i,tan(x-i),'r','LineWidth',2)
    plot(i+[pi/4 pi/4],[0 1],'b--','LineWidth',1.5)
end
yline(1,'b','LineWidth',2)
yline(0,'k')
xline(0,'k')
ylim([-5 5])
xlim([-9 10])
legend('y=tan(\theta)','FontSize',14)

% Insert labels
text(0.3,4.5, 'y','FontSize',14)
text(9.3,0.4, '\theta','FontSize',14)
text(-7.5,1.4, 'y=1','FontSize',14)
text(pi/4-0.5,-0.4, '{\pi}/_{4}','FontSize',14)
text(-3*pi/4-0.5,-0.4, '{-3\pi}/_{4}','FontSize',14)
text(-7*pi/4-0.5,-0.4, '{-7\pi}/_{4}','FontSize',14)
text(5*pi/4-0.5,-0.4, '{5\pi}/_{4}','FontSize',14)
text(9*pi/4-0.5,-0.4, '{9\pi}/_{4}','FontSize',14)

% Remove xticks and yticks
set(gca,'XTick',[], 'YTick', [])