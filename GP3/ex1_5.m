X = Binomial(0.3, 20, 1e6);
hist(X);
p = zeros(1, 21);
for i = 1:21
    p(i) = sum(X == i - 1) / 1e6;
end
p
sum(p)