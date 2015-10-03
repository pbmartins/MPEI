N = 1e6;
X = 2 * randn(1, N) + 14; % media = 14 / desviopadrao = 2
X(find(X>20)) = 20; % notas acima de 20 sao 20
min(X) % nota mais baixa
sum(X == 20) % numero de 20

p1 = sum((X >= 12 & X <= 16)) / N
p2 = sum((X >= 10)) / N