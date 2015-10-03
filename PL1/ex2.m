N = 1e6 % Nº de tentativas
L = 15 % Nº de lançamentos
F = 6 % Nº de casos favoráveis
A = round(rand(L, N));
Count = sum(sum(A)==F);
P=Count/N
P_theoretical = combination(L, F)/2^L
