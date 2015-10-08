N = 1e6;
Num_Caras = sum(round(rand(15, N)));
P = sum(Num_Caras >= 6) / N;
fprintf('Probabilidade de sair pelo menos 6 caras em 15 lancamentos: %f\n', P);