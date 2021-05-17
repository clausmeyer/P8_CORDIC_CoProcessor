% Function for plotting the result of the simulation as shown in figure 3.6
% in the report

function plot_points(error,angle,max_error)
figure(1)
plot(angle,abs(error),'o')
hold on
yline(max_error,'LineWidth',2)
legend('Actual error','Maximum theoretical error','Fontsize',12)
ylabel('Absolute error [rad]','Fontsize',14)
xlabel('CORDIC output [rad]','Fontsize',14)
ylim([0 max_error*1.3])
sum(abs(error)>max_error)
end