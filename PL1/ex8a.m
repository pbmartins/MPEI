N = 1e6;
% 1 ser rapaz
% 0 ser rapariga
E = 5; % elementos da fam?lia
A = round(rand(E, N));
Count = sum(sum(A) >= 1); % Numero de rapazes
P = Count / N
