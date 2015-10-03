N = 1e6 % N?? de tentativas
L = 5 % N?? de pe??as/amostra
F = 2 % N?? de casos favor??veis (pe??as defeituosas)
P_d = 0.3 % Probabilidade de a pe??a ser defeituosa
A = rand(L, N)<=0.3;
Count = sum(sum(A)<=F);
P=Count/N