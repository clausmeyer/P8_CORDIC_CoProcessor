% This Matlab file is used for plotting figure 2.10 in the report.

desired_angle = pi/8;

x(1) = 1; y(1) = tan(desired_angle); z(1) = 0; 
plot([0 1], [z(1), z(1)], 'b', 'Linewidth',2)
hold on
for i = 2:10
    % -------------- CORDIC iteration-------------------
    n=-i+2;
    d = -1*sign(y(i-1));
    x(i) = x(i-1)-d*(y(i-1)*2^(n));
    y(i) = y(i-1)+d*(x(i-1)*2^(n));
    LUT(i) = atan(2^(n));
    z(i) = z(i-1)-d*LUT(i);
    
    plot([i-1, i], [z(i), z(i)], 'b', 'Linewidth',2)
    % -------------- CORDIC iteration-------------------
end

yline(desired_angle)
ylim([-0.1 1])
yticks([0 pi/16 2*(pi/16) 3*(pi/16) 4*(pi/16) 5*(pi/16)])
yticklabels({'0', '\pi/16', '\pi/8', '\pi/5.33', '\pi/4', '\pi/3.2'})
xlabel('Iterations')
ylabel('Angle [rad]')