N = 1e6;
P_Cancro = 0.0001;
P_Mamograma_Cancro = 0.9;
P_Mamograma_NaoCancro = 0.1;
% P_Cancro_Mamograma = ?

P_CancroMamograma = P_Cancro * P_Mamograma_Cancro;
P_Mamograma = P_Mamograma_Cancro * P_Cancro + (1 - P_Cancro) * P_Mamograma_NaoCancro;

P_Cancro_Mamograma = P_CancroMamograma / P_Mamograma;
fprintf('Probabilidade (teorica) de ter cancro, tendo um exame positivo: %f\n', P_Cancro_Mamograma);

% Simulada
X = rand(2, N);
P_Cancro_Sim = sum(X(1,:) <= P_Cancro) / N;
P_MamogramaCancro_Sim = sum(X(1,:) <= P_Cancro & X(2,:) <= P_Mamograma_Cancro) / N;
P_Mamograma_Sim = P_MamogramaCancro_Sim + sum(X(1,:) <= (1 - P_Cancro) & X(2,:) <= P_Mamograma_NaoCancro) / N;

P_Cancro_Mamograma_Sim = P_MamogramaCancro_Sim / P_Mamograma_Sim;
fprintf('Probabilidade (simulada) de ter cancro, tendo um exame positivo: %f\n', P_Cancro_Mamograma_Sim);