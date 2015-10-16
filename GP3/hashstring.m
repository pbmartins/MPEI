function [ hash ] = hashstring( string, tablesize )
%HASHSTRING Summary of this function goes here
%   Detailed explanation goes here
    hash = 0;
    for i = 1:length(string)
       c = string(i) + 33;
       hash = bitshift(hash, 3) + bitshift(hash, -28) + c;
    end
    hash = int16(mod(hash, tablesize));
end

