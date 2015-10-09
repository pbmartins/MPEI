alpha = 15;

% Alinea a)
k = 0;
P_nenhuma_mensagem = alpha^k / factorial(k) * exp(-alpha);
fprintf('Probabilidade de nao receber nenhuma mensagem: %d\n', P_nenhuma_mensagem);

% Alinea b)
k = 0;
P_mais_10 = 1 - sum(arrayfun(@(i) alpha^i / factorial(i) * exp(-alpha), 1:10));
fprintf('Probabilidade de receber mais de 10 mensagens: %f\n', P_mais_10);