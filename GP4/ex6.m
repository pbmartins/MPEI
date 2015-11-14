clear, clc
[pL, letras] = probabilidadeLetras('pg21209.txt');

pL1 = sum(pL, 2);
pL2 = sum(pL);

pALL = [pL1'; pL2];

meanL1 = letras * pL1;
meanL2 = letras * pL2';
varL1 = letras.^2 * pL1 - meanL1^2;
varL2 = letras.^2 * pL2' - meanL2^2;
corr = sum(sum(letras' * letras .* pL));

cov = corr - meanL1 * meanL2;
corr_coef = cov / sqrt(varL1 * varL2)

LogL1 = log2(1 ./ pL1);
LogL1(LogL1 == Inf) = 0;
HL1 = LogL1' * pL1

LogL2 = log2(1 ./ pL2);
LogL2(LogL2 == Inf) = 0;
HL2 = LogL2 * pL2'

LogL = log2(1 ./ pL);
LogL(LogL == Inf) = 0;
HL = sum(sum(LogL .* pL))