function [ to_return ] = Bernoulli( p, n )
%BERNOULLI Summary of this function goes here
%   Detailed explanation goes here
    to_return = rand(n, 1) <= p;
end

