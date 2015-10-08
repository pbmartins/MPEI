function [ to_return ] = lcg( X0, a, c, m, N )
%LCG Summary of this function goes here
%   Detailed explanation goes here
    if N <= 0
       to_return = []; 
    else
        to_return = zeros(1, N);
        to_return(1) = X0;
        for i = 1:N-1
            to_return(i+1) = mod(a * to_return(i) + c, m);
        end
        to_return = to_return ./ m;
    end
end