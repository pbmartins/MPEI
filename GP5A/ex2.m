T = [0.7 0.2 0.3;
    0.2 0.3 0.3;
    0.1 0.5 0.4];

X0 = [1; 0; 0];
X1 = T^2 * X0;
PChuva_X2 = X1(3)

pT20 = T(:);
helper = T;
for i = 1:20
    helper = T * helper;
    pT20 = [pT20 helper(:)];
end

subplot(1, 2, 1);
plot(pT20');

p0_20_min = T(:);
helper = T;
diff = 1;
while diff > 10^-4
    X1 = T * helper;
    diff = max(abs(X1 - helper));
    helper = X1;
    p0_20_min = [p0_20_min, helper(:)];
end

subplot(1, 2, 2);
plot(p0_20_min');