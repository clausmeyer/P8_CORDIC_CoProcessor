% Function for simulating the precision of the CORDIC algorithm given an
% input interval and a word length

% Inputs:
%    a            - Lower bound on the input values
%    b            - Upper bound on the input values
%    N_MC         - Number of randomly drawn numbers used in the simulation
%    word_length   - Upper bound on the word length
%    N_max_iters  - Upper bound on the number of CORDIC iterations


% Outputs:
%    big - 3 dimensional matrix containing the precision for each input,
%          word length and iterations

function big = compute_precision_2d(a, b, N_MC, word_length)

% Not fully ulitilised
a = 0.00001; b = 0.0001; 

% Fully ulitilised
%a = 1/8; b = 1/4; N_MC = 100;

word_length = 25;
big = zeros(N_MC,word_length);
xvector = a + (b-a).*rand(N_MC,1);
yvector = a + (b-a).*rand(N_MC,1);
for monte_carlo_iters = 1:N_MC

for loops = 1:word_length
signed=1;
wl = 6+loops-1;
fracl = wl-3;

N = wl+1; 
xfloat = xvector(monte_carlo_iters); yfloat = yvector(monte_carlo_iters);
x = fi(zeros(N,1),signed,wl,fracl); y = fi(zeros(N,1),signed,wl,fracl); LUT = fi(zeros(N,1),signed,wl,fracl); z = fi(zeros(N,1),signed,wl,fracl);
x(1) = fi(xfloat,signed,wl,fracl); y(1) = fi(yfloat,signed,wl,fracl); z(1) = fi(0,signed,wl,fracl);
realz = atan(yfloat/xfloat);
for i = 2:N
   d(i) = -1*sign(y(i-1));
   
   x(i) = x(i-1)-d(i)*bitshift(y(i-1),-i+2);
   y(i) = y(i-1)+d(i)*bitshift(x(i-1),-i+2);
   LUT(i) = atan(2^(-i+2));
   z(i) = z(i-1)-d(i)*LUT(i);
   %plotter(0,0,1,x,y,z,i)
end

zz(loops) = double(z(N));
rz(loops) = atan(yfloat/xfloat);
error(loops) = rz(loops)-double(zz(loops));
L0 = sqrt(x(1)^2+y(1)^2);
Lend = sqrt(x(N)^2+y(N)^2);
end

big(monte_carlo_iters,:) = abs(error);
monte_carlo_iters
end
