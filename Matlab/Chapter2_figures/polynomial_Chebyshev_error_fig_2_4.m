
%% Matlab file for plotting the error between the third order Chebyshev Polynomial and the arctangent function seen on figure 2.4 in the report
clc
clear all

plot1=fplot(@(x) (-0.1895141650*x^3 + 0.9705627487*x)-atan(x))
xlim([-1 1])
ylim([-1e-2 1e-2])
xlabel('x');
ylabel('Error');