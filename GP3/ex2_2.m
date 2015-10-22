tablesize = 1250;
array = arrayfun(@(i) hashstring(hashfunctionv2(), tablesize), 1:1000);
N = zeros(1, tablesize);
X = zeros(1, 10);

for i = 0:tablesize-1
    N(i + 1) = sum(array == i);
    X(N(i + 1) + 1) = X(N(i + 1) + 1) + 1;
end

subplot(1, 2, 1);
bar(0:9, X);

subplot(1, 2, 2);
bar(N);

fprintf('Factor de carga: %f\n', 1000 / tablesize);

fprintf('Media de comprimento: %f\n', mean(N));
fprintf('Variancia de comprimento: %f\n', var(N));