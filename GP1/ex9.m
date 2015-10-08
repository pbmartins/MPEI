N = 1e7;
L = 10;

X = round(rand(L, N));
P_10_caras = sum(sum(X) == 10) / N;
fprintf('Probabilidade de sair 10 caras em 10 lancamentos: %f\n', P_10_caras);

Y = round(rand(L + 1, N));
P_11_caras = sum(sum(Y) == 11) / N;
P_11_ser_cara = P_11_caras / P_10_caras;
fprintf('Probabilidade de sair cara no 11 lancamento: %f\n', P_11_ser_cara);