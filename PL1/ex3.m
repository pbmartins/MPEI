N = 1e6 % N?? de tentativas
L = 15 % N?? de lan??amentos
F = 6 % N?? de casos favor??veis
A = round(rand(L, N));
Count = sum(sum(A)>=F);
P=Count/N
P_sum = 0;
for i=0:5
    P_sum += calculate_prob(N, L, i);
end
P_theoretical = 1 - P_sum