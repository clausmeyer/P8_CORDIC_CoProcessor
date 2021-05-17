% Function for generating linearly spaced inputs to the CORDIC algorithm

% Inputs:
%    a            - Lower bound on the inputs in degrees
%    b            - Upper bound on the inputs in degrees
%    N_MC         - Number of inputs to be generated

% Outputs:
%    yvector      - The y parts of the inputs for the CORDIC algorithm 
%    xvector      - The x parts of the inputs for the CORDIC algorithm
%    angle        - The angle in degrees of the inputs

function [yvector, xvector, angle] = generate_inputs(a,b,N_MC)

xvector = linspace(0.1,0.1,N_MC);
yvector = linspace(0,0,N_MC);
angle = zeros(1,N_MC);

j = linspace(a/(180/pi),b/(180/pi),length(xvector));
for i = 1:length(xvector)
    
    yvector(i) = tan(j(i));
end
yvector = yvector/10;

for i = 1:length(xvector)
    angle(i) = atan(yvector(i)/xvector(i));
end

end
