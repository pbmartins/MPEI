function [ return_val ] = calculate_prob (N, L, F)
    % N = n??mero de tentativas
    % L = n??mero de lan??amentos
    % F = n??mero de casos favor??veis
    return_val = combination(L, F) / 2^L;
end