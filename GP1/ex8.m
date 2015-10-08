N = 1e6;
F = 5;

X = round(rand(F, N)); % rapaz = 1 / rapariga = 0
P_pm_1_Rapaz = sum(sum(X) > 0) / N;
fprintf('Probabilidade de ter pelo menos 1 rapaz: %f\n', P_pm_1_Rapaz);

P_Outro_Rapaz = sum(sum(X) == 2) / N / P_pm_1_Rapaz;
fprintf('Probabilidade de outro 1 rapaz, sabendo que ja tem um filho: %f\n', P_Outro_Rapaz);
