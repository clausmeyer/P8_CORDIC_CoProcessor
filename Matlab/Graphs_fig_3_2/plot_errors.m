% Function for plotting the errors found in the function
% compute_precision_2d, which is shown as figure 3.2 in the report

function plot_errors(results, wl, N_max_bits)

semilogy(6:wl+5, results')
xlim([6,30])
ylim([10^(-10),10^1])
xlabel("Word length",'Fontsize',15)
ylabel("Error [rad]",'Fontsize',15)

end