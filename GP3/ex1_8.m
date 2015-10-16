N = 1e6;
[X, Y, N] = rejeicaogaussiana(N, -5, 5);
plot(X(N), Y(N), '*');