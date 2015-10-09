alpha = 1;
k = 0;
P_mais_1_erro = 1 - alpha^k / factorial(k) * exp(-alpha);
fprintf('Probabilidade de mais de 1 erro: %f\n', P_mais_1_erro);