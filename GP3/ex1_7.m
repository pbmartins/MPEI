N = 30;
[X, Y] = boxmuller(N);

X = sqrt(2) .* X + 14;
subplot(1, 2, 1);
hist(X);

Z = sqrt(2) .* randn(1, N) + 14;
subplot(1, 2, 2);
hist(Z);