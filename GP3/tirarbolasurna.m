function [ X ] = tirarbolasurna( N, Max )
%TIRARBOLASURNA Summary of this function goes here
%   Detailed explanation goes here
    X = [];
    if N <= Max
        while true
            X = ceil(rand(1, N) * 50);
            if length(unique(X)) == N
                break
            end
        end
    end

end

