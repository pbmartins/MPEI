clear, clc
pXY = [0.3 0.2 0;
    0.1 0.15 0.05;
    0 0.1 0.1];

X = [0 1 2];

pX = sum(pXY, 2)
pY = sum(pXY)

meanX = X * pX
meanY = pY * X'

varX = X.^2 * pX - meanX^2
varY = pY * X.^2' - meanY^2

corr = sum(sum(X' * X .* pXY))

covar = corr - meanX * meanY

corr_coef = covar / sqrt(varX * varY)