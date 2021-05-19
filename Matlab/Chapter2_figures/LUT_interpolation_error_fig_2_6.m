%% Matlab file for plotting the error between two distrubtion using a LUT to appoximate sine seen on figure 2.5 in the report
close all
clear all

% Resolution 
t1 = linspace(0,2*pi,1024); % Points to plot sine.
t2 = linspace(0,2*pi,17); % 17 points even distributed between 0 and 2pi.

% Create the custom distribution between 0 and 2pi
n = 15;
temp = linspace(pi/4 - pi/n,pi/2 + pi/4 + pi/n,7);
temp2 = linspace(pi+pi/4 - pi/n,pi + pi/2 + pi/4 + pi/n,7);
t3 = [0, temp, pi, temp2, 2*pi];

% Calculate the error for the two distributions
Error_1 = interp1(t2,sin(t2),t1,'linear')-sin(t1);
Error_2 = interp1(t3,sin(t3),t1,'linear')-sin(t1);

% Plot
figure
hold on
plot(t1,abs(Error_1),'LineWidth', 2.5,'Color', '#D95319') % Error for even
plot(t1,abs(Error_2),'LineWidth', 2.5,'Color', '#0072BD') % Errro for custom
line([0,2*pi],[mean(abs(Error_1)),mean(abs(Error_1))],'LineStyle',':','LineWidth', 2.5,'Color', '#D95319') % Mean error even
line([0,2*pi],[mean(abs(Error_2)),mean(abs(Error_2))],'LineStyle',':','LineWidth', 2.5,'Color', '#0072BD') % Mean error custom

legend("Evenly Dist.", "Custom Dist.", "Mean Error Even", "Mean Error Custom")
xlabel("x")
ylabel("Error")
xlim([0,2*pi])
set(gca,'FontSize',50)

