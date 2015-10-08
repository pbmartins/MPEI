P_defeituosa = 0.3;
N = 1e6;
N_pecas = 5;
x = [0 1 2 3 4 5];

X = rand(5, N);
N_pecas_defeitusosas = sum(X <= P_defeituosa);

y = [sum(N_pecas_defeitusosas==0) sum(N_pecas_defeitusosas==1) sum(N_pecas_defeitusosas==2) sum(N_pecas_defeitusosas==3) sum(N_pecas_defeitusosas==4) sum(N_pecas_defeitusosas==5)] / N;
bar(x, y);

% Alinea a)
P_3_pecas_defeituosas = y(4);
fprintf('Probabilidade de 3 pecas serem defeituosas: %f\n', P_3_pecas_defeituosas);

% Alinea b)
P_max_2_pecas_defeituosas = sum(y(1:2));
fprintf('Probabilidade de no maximo 2 pecas serem defeituosas: %f\n', P_max_2_pecas_defeituosas);