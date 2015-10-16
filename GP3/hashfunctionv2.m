function [ string ] = hashfunctionv2()
%HASHFUNCTION Summary of this function goes here
%   Detailed explanation goes here
    comprimento = randn * sqrt(5) + 10;
    [prob_letras, letras] = probabilidadeLetrasPT('pg21209.txt');
    prob_letras = cumsum(prob_letras);
    
    string = '';
    for i = 1:comprimento
        r = rand;
        for p = prob_letras
            if r <= p
                idx = find(prob_letras <= p);
                s = letras(idx(end));
                string(i) = char(s);
                break
            end
        end
    end
end