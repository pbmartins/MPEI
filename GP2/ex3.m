% Simulated
N = 1e6;
L = 4;
X = round(rand(L, N));

p_simulated = [sum(sum(X) == 0) sum(sum(X) == 1) sum(sum(X) == 2) sum(sum(X) == 3) sum(sum(X) == 4)] / N;
meanX_simulated = mean(sum(X));
varX_simulated = var(sum(X));

fprintf('Media simulada: %f\n', meanX_simulated);
fprintf('Variancia simulada: %f\n', varX_simulated);

% Theoretical

s = [0 1 2 3 4];
p_theoretical = zeros(1, 5);

for i = s
    p_theoretical(i + 1) = factorial(4) / factorial(4 - i) / factorial(i) * 0.5^i * (1 - 0.5)^(4 - i);
end

meanX_theoretical = sum(p_theoretical .* s);
varX_theoretical = sum(p_theoretical .* (s.^2)) - meanX_theoretical^2;

fprintf('Media teorica: %f\n', meanX_theoretical);
fprintf('Variancia teorica: %f\n', varX_theoretical);

fprintf('Probabilidade de obter pelo menos duas coroas: %f\n', sum(p_theoretical(3:end)));
fprintf('Probabilidade de obter ate uma coroa: %f\n', sum(p_theoretical(1:2)));
fprintf('Probabilidade de obter pelo menos duas coroas: %f\n', sum(p_theoretical(2:4)));