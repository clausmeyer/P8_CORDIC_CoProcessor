%% Matlab file for plotting the approximated sine using a LUT vs a sine seen on figure 2.5 in the report
close all
clear all

% Resolution 
t1 = linspace(0,2*pi,1024); % Points to plot sine.
t2 = linspace(0,2*pi,17); % 17 points even distributed between 0 and 2pi.

% Plot
figure
hold on
c = area([t1],[sin(t1)],'FaceColor','#0072BD', 'EdgeColor','#0072BD','FaceAlpha', 0.9); % Area under sine
d1 = area([t2],[sin(t2)],'FaceColor','#FFFFFF', 'EdgeColor','#FFFFFF','FaceAlpha', 1); %  Area under LUT sine 
a = plot(t2,sin(t2),'-o','LineWidth', 1.7,'Color','#D95319'); % Plot LUT sine
b = plot(t1,sin(t1),'LineWidth', 2.5,'Color',	'#EDB120');   % Plot sine

% Error plot = Area under sine - Area under LUT

grid off
xlim([0,2*pi])
legend([a,b,c],[" \approx sin"," sin"," error"],'FontSize', 50)

set(gca,'XColor', 'none','YColor','none')