% Matlab file for simulating the fixed point precision 
% when altering the word length and number of iterations.

clear all
%close all


a = 0.15; b = 1.5;         % Uncomment this to create figure 3.4a
%a = 0.00001; b = 0.0001;   % Uncomment this to create figure 3.4b
MC_iterations = 100;
max_wordlength = 25;
max_iterations = 33;
grid = compute_precision_3d(a, b, MC_iterations, max_wordlength, max_iterations);

plot_colormap(grid, max_wordlength, max_iterations)