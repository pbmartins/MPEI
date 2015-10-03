n = 8000;
p = 0.001;
k = 7;
alpha = n * p;
comb = prod(n:-1:n-k+1)/prod(1:k); % Combinacoes de N, K a K
format long;
binomial = comb * p^k * (1-p)^(n-k)
poisson = alpha^k/prod(1:k) * exp(-alpha)

% Grafica com todas as probabilidades
k = 0:n;
poisson = alpha.^k./prod(1:k) * exp(-alpha);
