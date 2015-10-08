function [ X ] = fpm( Xi, Pi, N )
%FPM Summary of this function goes here
%   Detailed explanation goes here
    
    p = cumsum(pi);
    X = zeros(1,N);
    for i = 1:N
        x = rand;
        for j = 1:length(p)
           if x <= p(j) 
               X(i) = Xi(j);
               break;
           end
        end
    end
    
    %y = arrayfun(@(i)( Xi( find(rand <= p)(1) ) ), 1:N);

end

