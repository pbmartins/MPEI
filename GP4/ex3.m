clear, clc
% Alinea a
N = 1e5;
var = 13;
meanX = 12;
meanY = 15;

X = sqrt(13) * randn(1, N) + meanX;
Y = sqrt(13) * randn(1, N) + meanY;
X1 = round(X);
Y1 = round(Y);

varX_Y = 2 * var;
meanX_Y = meanX + meanY;
fprintf('Valor teorico da media: %f\n\n', meanX_Y);
fprintf('Como X1 e Y1 sao independentes,\nvar(X1 + Y1) = var(X1) + var(Y1) = %f\n\n', varX_Y);
fprintf('Havia a possibilidade de os valores serem diferentes\ncaso nao houvesse independencia, visto que var(X + Y) = var(X) + var(Y) + cov(X, Y).\n\n');

% Alinea b
Z = X1 + Y1;
[zi ni] = hist(Z);
pZ = zi / N; % fpm de Z
meanZ = ni * pZ';
varZ = ni.^2 * pZ' - meanZ^2;

fprintf('Valor obtido da media: %f\n', meanZ);
fprintf('Valor obtido da variancia: %f\n', varZ);
