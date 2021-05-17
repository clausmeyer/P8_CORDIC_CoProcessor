% Function for scaling the inputs to 16 bits from 24 bits to be used in the CORDIC algorithm

% Inputs:
%    x24            - x stored as a 24 bit value 
%    y24            - y stored as a 24 bit value 

% Outputs:
%    x16            - x stored as a 16 bit value 
%    y16            - y stored as a 16 bit value 

function [x16, y16] = scale_inputs(x24,y24)
tmpx = x24;
tmpy = y24;

lowx = find(tmpx.bin=='1', 1, 'first');
x16 = fi(0,1,16,13);
y16 = fi(0,1,16,13);
if y24 < 0
    lowy = find(tmpy.bin=='0', 1, 'first');
else
    lowy = find(tmpy.bin=='1', 1, 'first');
end
if lowy > 8
    lowy = 8;
end
if lowy > lowx
    x16 = bitshift(x24,lowx-4);
    y16 = bitshift(y24,lowx-4);
else
    x16 = bitshift(x24,lowy-4);
    y16 = bitshift(y24,lowy-4);
end
end