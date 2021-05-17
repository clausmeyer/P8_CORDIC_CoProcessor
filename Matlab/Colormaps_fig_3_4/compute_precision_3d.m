% Function for simulating the precision of the CORDIC algorithm given an
% input interval, number of repetitions, largest word length and largest
% number of iteration

% Inputs:
%    a            - Lower bound on the input values
%    b            - Upper bound on the input values
%    N_MC         - Number of randomly drawn numbers used in the simulation
%    N_max_bits   - Upper bound on the word length
%    N_max_iters  - Upper bound on the number of CORDIC iterations


% Outputs:
%    big - 3 dimensional matrix containing the precision for each input,
%          word length and iterations

function big = compute_precision_3d(a,b,N_MC, N_max_bits, N_max_iters)


big = zeros(N_max_iters,N_max_bits,N_MC);
xvector = a + (b-a).*rand(N_MC,1);
yvector = a + (b-a).*rand(N_MC,1);


for MC_iters = 1:N_MC           % Outer loop iterating over the randomly drawn inputs
    
    for loops = 1:N_max_bits    % Outer loop iterating over the word length
        
        % Defining sign, decimal and fractional bits
        signed=1;
        wl = 8+loops-1;
        fracl = wl-3;
        
        N = wl+1;
        
        xfloat = xvector(MC_iters); yfloat = yvector(MC_iters);
        
        % Converting the floating point input numbers into fixed point numbers:
        
        x = fi(zeros(N,1),signed,wl,fracl); y = fi(zeros(N,1),signed,wl,fracl); LUT = fi(zeros(N,1),signed,wl,fracl); z = fi(zeros(N,1),signed,wl,fracl);
        x(1) = fi(xfloat,signed,wl,fracl); y(1) = fi(yfloat,signed,wl,fracl); z(1) = fi(0,signed,wl,fracl);
        
        realz = atan(yfloat/xfloat); % The floating point calculation of arctan(y/x)
        
        big(1,loops,MC_iters) = realz-double(z(1));
        
        for i = 2:N_max_iters  % Inner loop computing the CORDIC iteration
            
            % -------------- CORDIC iteration-------------------
            d(i) = -1*sign(y(i-1));
            
            x(i) = x(i-1)-d(i)*bitshift(y(i-1),-i+2);
            y(i) = y(i-1)+d(i)*bitshift(x(i-1),-i+2);
            LUT(i) = atan(2^(-i+2));
            z(i) = z(i-1)-d(i)*LUT(i);
            % -------------- CORDIC iteration-------------------
            
            big(i,loops,MC_iters) = realz-double(z(i)); % Saving the current error into the big result matrix
            
        end
    end
    MC_iters % Print the number of the current iteration
end
end