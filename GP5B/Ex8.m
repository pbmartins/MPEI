% Ex1
H = [0.8 0 0.5 0;
     0.2 0.9 0.35 0
     0 0.1 0.1 0
     0 0 0.05 1];

% Ex2 
X0 = [1 0 0 0]';
X1000 = H^1000 * X0;
fprintf('Probabilidade de estar em 2 ap?s 1000 passos: %f\n', X1000(2));

% Ex3
H2 = H * H
H10 = H2 * H^8
H100 = H10^10

% Ex4
Q = H(1:3, 1:3)

% Ex5
F = inv(eye(length(Q)) - Q)

% Ex6
p = sum(F);
fprintf('A media de passos para chegar da pagina 1 ate a 4: %f\n', p(1));
fprintf('A media de passos para chegar da pagina 2 ate a 4: %f\n', p(2));
fprintf('A media de passos para chegar da pagina 3 ate a 4: %f\n', p(3));

% Ex7
fprintf('Tempo de absorcao da pagina 1: %f\n', p(1));
fprintf('Tempo de absorcao da pagina 2: %f\n', p(2));