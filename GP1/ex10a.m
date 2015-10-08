% m = 1000
subplot(1, 3, 1);
x = cumsum(ones(1, 1000));
p = zeros(0, 1000);
for i = 1:1000
    p(i) = 1 - prod(x(end - x(i) + 1:end)) / 1000^x(i);
end
plot(p);

% m = 10000
subplot(1, 3, 2);
x = cumsum(ones(1, 10000));
p = zeros(0, 10000);
for i = 1:10000
    p(i) = 1 - prod(x(end - x(i) + 1:end)) / 10000^x(i);
end
plot(p);

% m = 100000
subplot(1, 3, 3);
x = cumsum(ones(1, 100000));
p = zeros(0, 100000);
for i = 1:100000
    p(i) = 1 - prod(x(end - x(i) + 1:end)) / 100000^x(i);
end
plot(p);