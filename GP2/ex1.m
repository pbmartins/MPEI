X = cumsum(ones(1, 6));
P = ones(1, 6) / 6;
FD = cumsum(P);
subplot(1, 2, 1);
bar(X, P);
subplot(1, 2, 2);
bar(X, FD);