%% Matlab file for plotting the arctangent function as seen in figure 2.2 in the report

set(0,'defaultTextInterpreter','tex');

% Define a linspace for the domain of arctan. 
% In this case delimited to +-3pi
p = 3*pi;
x=linspace(-p,p,1000);

% Plot the function and add labels
plot(x,atan(x),'r','LineWidth',2)
ylim([-2.5 2.5])
yline(pi/2,'b--','LineWidth',2)
yline(-pi/2,'b--','LineWidth',2)
yline(0,'k')
xline(0,'k')
text(-p*0.95,pi/2*1.2, '\theta={\pi}/_{2}','FontSize',14)
text(p*0.7,-pi/2*1.2, '\theta=-{\pi}/_{2}','FontSize',14)
text(p*0.15,0.7, '\theta=arctan(x)','FontSize',14)
text(0.3,pi/2*1.45, '\theta','FontSize',14)
text(p*0.9,0.2, 'x','FontSize',14)
xticks([-3*pi -2*pi -pi 0 pi 2*pi 3*pi])
xlim([-p p])
xticklabels({'-3\pi','-2\pi','-\pi','0','\pi','2\pi','3\pi'})

set(gca, 'YTick', [])