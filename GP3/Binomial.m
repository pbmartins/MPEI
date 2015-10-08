function [ to_return ] = Binomial( p, n, N )
%BERNOULLI Summary of this function goes here
%   Detailed explanation goes here
    X = rand(n, N) <= p;
    to_return = sum(X);
end
