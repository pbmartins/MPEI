x = cumsum(ones(1, 365));
p = zeros(1, 70);


for n = 1:70
    p(n) = 1 - prod(x(end - n + 1: end)) / 365^n;
end
plot(p);

n_50 = find(p >= 0.5, 1);
n_90 = find(p >= 0.9, 1);

fprintf('Minimo de pessoas para haver 50 de probabilidade de fazerem anos no mesmo dia: %d\n', n_50);
fprintf('Minimo de pessoas para haver 90 de probabilidade de fazerem anos no mesmo dia: %d\n', n_90);