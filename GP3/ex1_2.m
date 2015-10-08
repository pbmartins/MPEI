% Alinea a)
X = lcg(9, 3, 7, 11, 1000);
hist(X);
fprintf('Numero de numeros diferentes: %d\n', length(unique(X)));

% Alinea b)
X = lcg(7, 9, 1, 17, 1000);
hist(X);
fprintf('Numero de numeros diferentes: %d\n', length(unique(X)));

% Alinea c)
X = lcg(7, 13^13, 1, 2^59, 1000);
hist(X);
fprintf('Numero de numeros diferentes: %d\n', length(unique(X)));