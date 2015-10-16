tablesize = 1250;
array = arrayfun(@(i) hashstring(hashfunction(), tablesize), 1:1000);
N = zeros(1, tablesize);

for i = 0:tablesize-1
    N(i + 1) = sum(array == i);
end
N
subplot(1, 3, 1);
bar(N);

subplot(1, 3, 2);
bar(N / tablesize);

fprintf('Factor de carga: %f\n', 1000 / tablesize);

subplot(1, 3, 3);
bar(N / 1000);
fprintf('Media de comprimento: %f\n', mean(N));
fprintf('Variancia de comprimento: %f\n', var(N));