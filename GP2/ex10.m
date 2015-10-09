N = 1e6;
X = floor(rand(1, N) * 11);

fprintf('P(X < 3) = %f\n', sum(X < 3) / N);
fprintf('P(X > 7) = %f\n', sum(X > 7) / N);
fprintf('P(1 < X < 6) = %f\n', sum(X > 1 & X < 6) / N);