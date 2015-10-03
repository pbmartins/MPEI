N = 1e6;
m21 = round(rand(1, N));
m20 = round(rand(20, N));
X20 = sum(m20);
X21 = sum(X20 == 20 & m21 == 1)
P = X21 / sum(X20 == 20)