function [ P_Um_Dois ] = PSair1Sabendo2SemRep( N, P, F )
%PSAIR1SABENDO2 Summary of this function goes here
%   Detailed explanation goes her
    X = zeros(F, N);
    for i = 0:N
       x = ceil(rand(F,1) * P);
       while true
        if length(unique(x)) == F
            for j = 1:5
                X(j,i + 1) = x(j);
            end
            break
        else
            x = ceil(rand(F,1) * P);
        end
       end
    end

    P_UmDois = sum(sum(X == 1) & sum(X == 2)) / N;
    P_Dois = sum(sum(X == 2) > 0) / N;
    P_Um_Dois = P_UmDois / P_Dois;
end

