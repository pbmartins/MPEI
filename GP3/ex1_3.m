%Alinea a)
p = 0.3;
N = 1e6;
L = 10;
X = rand(L, N);
Casos_fav = sum(X <= 0.3);
hist(Casos_fav);

%Alinea b)
N = 1e6;
L = 15;
D = ceil(rand(L, N) * 6);

%Alinea c)
N = 1e6;
L = 20;
R = rand(L, N) * 14 - 4;