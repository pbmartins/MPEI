clear, clc

X = [0 1]; % 0 = chuva / 1 = sol
pMetSol = 0.75;
pMetChuva = 0.25;
pPChuva_MChuva = 1;
pPSol_MSol = 1/3;

pPChuvaMChuva = pPChuva_MChuva * pMetChuva;
pPSolMChuva = 1 - pPChuvaMChuva;
pPSolMSol = pPSol_MSol * pMetSol;
pPChuvaMSol = 1 - pPSolMSol;

pPM = [pPChuvaMChuva pPChuvaMSol;
       pPSolMChuva pPSolMSol]
   
pMetereologistaAcertar = pPM(1, 1) + pPM(2, 2)

% Estudante

pPChuva_MChuva = 0;
pPSol_MSol = 1;

pPChuvaMChuva = 0;
pPSolMChuva = pMetChuva;
pPSolMSol = pPSol_MSol * pMetSol;
pPChuvaMSol = 0;

pPM = [pPChuvaMChuva pPChuvaMSol;
       pPSolMChuva pPSolMSol]

pEstudanteAcertar = pPM(1, 1) + pPM(2, 2)

pP = sum(pPM, 2);
pM = sum(pPM);

meanP = X * pP;
meanM = X * pM';

cov = sum(sum(X' * X .* pPM)) - meanP * meanM;
corr_coef_estudante = cov

fprintf(' Como o coeficiente de correlacao e igual a 0, \n isto implica que as variaveis previsao e meteorologia estao descorrelacionadas, \n o que implica que o estudante nao faz nenhuma previsao.\n');

