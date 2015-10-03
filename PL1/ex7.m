N = 5e6;
Pdoente = 1 / 10000;
PpositivoDadoDoenca = 0.9;
PpositivoDadoNaoDoenca = 0.1;
doenca = rand(1, N) > (1-Pdoente);
d_sim = sum(doenca);

mamograma1 = doenca.*rand(1, N) > (1-PpositivoDadoDoenca);
mamograma2 = (1-doenca).*rand(1, N) > (1-PpositivoDadoNaoDoenca);

mamograma = mamograma1 + mamograma2;
fprintf('positivos com doenca: %d\n', sum(mamograma1));
fprintf('positivos sem doenca: %d\n', sum(mamograma2));
fprintf('mamografia positiva: %f\n', sum(mamograma)/N);

kAB = sum((doenca == 1) & (mamograma == 1));
kB = sum(mamograma == 1);
PdoenteDadoMamogramaPositivo = kAB / kB;
fprintf('doenca com exame positivo: %f\n', PdoenteDadoMamogramaPositivo);