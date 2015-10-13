function [ P_Um_Dois ] = PSair1Sabendo2( N, P, F )
%PSAIR1SABENDO2 Summary of this function goes here
%   Detailed explanation goes her
    X = ceil(rand(F, N) * P);

    P_UmDois = sum(sum(X == 1) & sum(X == 2)) / N;
    P_Dois = sum(sum(X == 2) > 0) / N;
    P_Um_Dois = P_UmDois / P_Dois;
end

