clear, clc
%Alinea a
N = 120;
meanN1 = 14;
varN1 = 1/4 * meanN1;

meanN2 = 1.2 * meanN1;
varN2 = 1/4 * meanN2;

N1 = round(sqrt(varN1) * randn(1, N) + meanN1);
N2 = round(sqrt(varN2) * randn(1, N) + meanN2);

N1(N1 > 20) = 20;
N1(N1 < 0) = 0;
N2(N2 > 20) = 20;
N2(N2 < 0) = 0;

%Alinea b
n1count = hist(N1, (0:20));
pN1 = n1count / N;

n2count = hist(N2, (0:20));
pN2 = n2count / N;

pN1N2 = pN1' * pN2;
surf(pN1N2);

% Alinea c
mN1 = (0:20) * pN1';
mN2 = (0:20) * pN2';
vN1 = (0:20).^2 * pN1' - mN1^2;
vN2 = (0:20).^2 * pN2' - mN2^2;

corr = sum(sum((0:20)' * (0:20) .* pN1N2));
covar = corr - mN1 * mN2;
corr_coef = covar / sqrt(vN1 * vN2)

% Alinea d
if pN1N2 == pN1' * pN2
    fprintf('Sao independentes\n');
else
    fprintf('Nao sao independentes\n');
end

% Aliena e
N1log = log2(1 ./ pN1);
N1log(N1log == Inf) = 0;
HN1 = N1log * pN1'

N2log = log2(1 ./ pN2);
N2log(N2log == Inf) = 0;
HN2 = N2log * pN2'

N1N2log = log2(1 ./ pN1N2);
N1N2log(N1N2log == Inf) = 0;
HN2 = sum(sum(N1N2log .* pN1N2))