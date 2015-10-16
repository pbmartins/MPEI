function [ X, Y, N ] = rejeicaogaussiana( N, a, b )
%REJEICAO Summary of this function goes here
%   Detailed explanation goes here
    X = rand(1, N) * (a - b) + a;
    Y = rand(1, N);
    
    %u = 0;
    %o = 1;
    %f = @(x)(1 / (o*sqrt(2)*pi) * e^-((X-u)^2 / (2*o^2)));
    
    N = Y <= 1 / (sqrt(2 * pi)) * exp(-X.^2 / 2);
    
end

