clear, clc
T = rand(20, 20);
T = bsxfun(@rdivide, T, sum(T));

T20 = T^20;
T40 = T20 * T20;
T100 = T20^5;

fprintf('Transicao do 1 para o 20 estado, na 20 transicao: %f\n', T20(20));
fprintf('Transicao do 1 para o 20 estado, na 40 transicao: %f\n', T40(20));
fprintf('Transicao do 1 para o 20 estado, na 100 transicao: %f\n', T100(20));