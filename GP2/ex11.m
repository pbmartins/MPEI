var_X = 2;
mean_X = 14;
N = 1e6;
X = randn(1, N) * var_X + mean_X;

X(X > 20) = 20; % notas acima de 20 sao 20
fprintf('Nota mais baixa = %f\n', min(X)); % nota mais baixa
fprintf('Numero de notas 20 = %d\n', sum(X == 20)); % numero de 20

fprintf('P(12 < X < 16) = %f\n', sum(X > 12 & X < 16) / N);
fprintf('P(10 < X < 18) = %f\n', sum(X > 10 & X < 18) / N);
fprintf('P(X >= 10) = %f\n', sum(X >= 10) / N);