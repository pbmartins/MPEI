N = 1e6;
Num_Caras = sum(round(rand(3, N)));
P = sum(Num_Caras == 2) / N;
fprintf('Probabilidade de sair 2 caras em 3 lancamentos: %f\n', P);