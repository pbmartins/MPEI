X = [0 1 2 3 4];
N = 1e5;
P = zeros(1, N);
p = 0.5;

for e = 1:N
    r = round(rand(4, 1));
    P(e) = sum(r);
end

subplot(1, 2, 1);
hist(P, X, 1);
mean_P_simulated = mean(P)
var_P_simulated = var(P)

P_theoretical = zeros(1, 5);
for e = X
    comb = prod(4:-1:4-e+1)/prod(4:e);
    P_theoretical(e + 1) = factorial(4)/factorial(e)/factorial(4-e) * 0.5^e * 0.5^(4-e);
end

mean_P_theoretical = sum(P_theoretical.*X)
var_P_theoretical =  sum(P_theoretical.*(X.^2)) - mean_P_theoretical^2
subplot(1, 2, 2);
plot(X, P_theoretical);

P_al_2coroas = sum(P >= 2) / N
P_max_1coroa = sum(P <= 1) / N
P_1to3coroas = sum(P >= 1 & P <= 3) / N
