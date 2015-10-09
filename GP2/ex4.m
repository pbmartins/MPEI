N = 1e6;
p = 0.3;
L = 5;
X = [0 1 2 3 4 5];

R = sum(rand(L, N) <= 0.3);
P_simulated = [sum(R == 0) sum(R == 1) sum(R == 2) sum(R == 3) sum(R == 4) sum(R == 5)] / N;
subplot(1, 2, 1);
bar(X, P_simulated);

P_theoretical = zeros(1, 5);
for e = X
    comb = prod(L:-1:L-e+1)/prod(L:e);
    P_theoretical(e + 1) = factorial(L)/factorial(e)/factorial(L-e) * p^e * (1-p)^(L-e);
end
subplot(1, 2, 2);
bar(X, P_theoretical);

fprintf('Probabilidade de no maximo 2 pecas serem defeituosas (teorica): %f\n', sum(P_theoretical(1:3)));
fprintf('Probabilidade de no maximo 2 pecas serem defeituosas (simulada): %f\n', sum(P_simulated(1:3)));