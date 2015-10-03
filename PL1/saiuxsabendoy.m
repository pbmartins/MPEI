function [ output_args ] = saiuxsabendoy( N_Words, N_Sentence, N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x = ceil(rand(N_Sentence, N) * N_Words);
P_1AND2 = sum(sum(x == 1) & sum(x == 2))/N;
P_2 = sum(sum(x == 2) > 0)/N;
P_1KNOW2 = P_1AND2 / P_2;
output_args = P_1KNOW2;
end

