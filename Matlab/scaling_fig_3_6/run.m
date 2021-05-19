% Matlab file for simulating the precision when using the scaling presented
% in section 3.2

clear all
close all

wl = 24;
fracl = wl-2;
signed=1;
N_max_iters = wl-1-8;

% Generate N_MC linearly spaced inputs y/x in the interval [a_angle b_angle]
a_angle = -86.9; b_angle = 86.9; N_MC = 2000;
[yvector, xvector, angle] = generate_inputs(a_angle,b_angle,N_MC);

for loops = 1:length(xvector) % Every time this loop is run, new input values are used
    
    % Convert the floating point inputs into 24 bit fixed point values
    xfloat = xvector(loops); yfloat = yvector(loops);
    x = fi(zeros(wl,1),signed,wl,fracl); y = fi(zeros(wl,1),signed,wl,fracl);
    
    % Initialise 16 bit values
    small_x = fi(zeros(1,wl-8),signed,wl-8,fracl-8); small_y = fi(zeros(1,wl-8),signed,wl-8,fracl-8); small_LUT = fi(zeros(1,wl-8),signed,wl-8,fracl-8); small_z = fi(zeros(1,wl-8),signed,wl-8,fracl-8);
    
    % Scale the input values from 24 bit to 16 bit
    x(1) = fi(xfloat,signed,wl,fracl); y(1) = fi(yfloat,signed,wl,fracl); z(1) = fi(0,signed,wl,fracl);    
    [small_x, small_y] = scale_inputs(x(1),y(1));
   
    for i = 2:wl-8
        % -------------- CORDIC iteration-------------------
        d = -1*sign(small_y(i-1));
        small_x(i) = small_x(i-1)-d*bitshift(small_y(i-1),-i+2);
        small_y(i) = small_y(i-1)+d*bitshift(small_x(i-1),-i+2);
        small_LUT(i) = atan(2^(-i+2));
        small_z(i) = small_z(i-1)-d*small_LUT(i);
        % -------------- CORDIC iteration-------------------
    end
    
    % Compute the error of the fixed point CORDIC approximation 
    CORDIC_z(loops) = double(small_z(wl-8));
    real_z(loops) = atan(yfloat/xfloat);
    error(loops) = real_z(loops)-double(CORDIC_z(loops));
    
    loops
end

% Find the largest theoretical error
max_error = (2^(-N_max_iters)+N_max_iters*2^(-wl+8))+N_max_iters*2^(-wl+8)
%% Plot the errors and the distribution of the errors in a histogram
plot_points(error,angle,max_error)
plot_histogram(error,angle,max_error)