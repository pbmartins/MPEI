function [ string ] = hashfunction()
%HASHFUNCTION Summary of this function goes here
%   Detailed explanation goes here
    comprimento = 2 + ceil(rand * 18);
    symbols = ['a':'z', 'A':'Z', '0':'9'];
    string = '';
    for i = 1:comprimento
       s = symbols(ceil(rand * length(symbols)));
       string(i) = char(s);
    end
end

