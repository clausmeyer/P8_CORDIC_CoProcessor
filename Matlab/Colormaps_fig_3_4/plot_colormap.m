% Function for plotting the errors found in the function
% compute_precision_3d, which is shown as figure 3.4 in the report

function plot_colormap(grid, N_max_bits, N_max_iters)

figure(3)

x = [N_max_iters-N_max_bits N_max_bits];
y = 0:N_max_iters-1;
c = log(mean(abs(grid),3));

imagesc(x, y, c, [-16 0] )

h = colorbar;
xlabel("Word length",'Fontsize',15)
ylabel("Iterations",'Fontsize',15)
ylabel(h, 'Log. Abs. Error[rad]', 'Fontsize',15)

xlim(x)
ylim([min(y), max(y)])

end 