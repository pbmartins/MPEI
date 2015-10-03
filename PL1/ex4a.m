N = 1e6 % Nº de tentativas
L = 5 % Nº de peças/amostra
F = 3 % Nº de casos favoráveis (peças defeituosas)
P_d = 0.3 % Probabilidade de a peça ser defeituosa
A = rand(L, N)<=0.3;
Count = sum(sum(A)==F);
P=Count/N
