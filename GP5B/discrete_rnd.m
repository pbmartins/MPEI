% pick the next page randomly according to those probabilities
% states = vector with states (numbers), probVector = probability vector
function [state] = discrete_rnd(states, probVector)
%...  To be developed
    probVector = cumsum(probVector');
    n = rand * length(states) + 1;
    state = find(n < probVector, 1);
end