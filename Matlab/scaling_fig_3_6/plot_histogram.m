% Function for plotting the histogram of the results of the simulation
% as shown in figure 3.6 in the report

function plot_histogram(error,angle,max_error)
figure(2)
xline(max_error,'LineWidth',2)
hold on
hist(abs(error),10)
xlabel('Absolute error [rad]','Fontsize',14)
xlim([0 max_error*1.3])
legend('Maximum theoretical error','Fontsize',12)
end