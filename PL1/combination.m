function [ return_val ] = combination(n, k)
    % Fun????o de combina????es N valores K a K
    % Como usar: combination(n, k)
    return_val = factorial(n)/(factorial(n-k) * factorial(k));
end