% Alinea e)
N = 1e6;
P = 3; % Numero de palavras
F = 2; % Numero de palavras por frase
P_Um_Dois = PSair1Sabendo2(N, P, F);
fprintf('Probabilidade de sequencia incluir 1, sabendo que inclui 2: %f\n', P_Um_Dois);

% Alinea d)
Y = zeros(1, 11);
Z = zeros(1, 11);
X = zeros(1, 11);
for i = 0:10
    N = 1e6;
    P = i + 10; % Numero de palavras
    F = 5; % Numero de palavras por frase
    X(i + 1) = P;
    Y(i + 1) = PSair1Sabendo2(N, P, F);
    Z(i + 1) = PSair1Sabendo2SemRep(1e4, P, F);
end

plot(X, Y, X, Z);
