function [ X ] = exponencial( m, N )
%EXPONENCIAL Summary of this function goes here
%   Detailed explanation goes here
    X = -m .* log(rand(1, N));
end

