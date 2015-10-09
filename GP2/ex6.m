p = 1/1000;
n = 8000;
k = 7;

% Binomial
x = cumsum(ones(1, n));
P_theoretical = prod(x(n - k + 1: end)) / prod(x(1:k)) * p^k * (1 - p)^(n - k);
fprintf('Binomial: probabilidade de 7 de 8000 chips serem defeituosos: %f\n', P_theoretical);

% Poisson
alpha = n * p;
P_Poisson = alpha^k / prod(x(1:k)) * exp(-alpha);
fprintf('Poisson: probabilidade de 7 de 8000 chips serem defeituosos: %f\n', P_Poisson);