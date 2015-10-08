% n = 10000

p = zeros(0, 100000);
for i = 10000:100000
    x = cumsum(ones(1, i));
    p(i) = 1 - prod(x(end - 10000 + 1:end)) / i^10000;
end
plot(p);