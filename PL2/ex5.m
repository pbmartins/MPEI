P = logspace(-2,-0.4,100);
X = [zeros(100, 1) zeros(100, 1) zeros(100, 1) zeros(100, 1)];

for e=1:100
   p2 = P(e)^2;
   p4 = 4 * P(e)^3 - 3 * P(e)^4;
   p4_p2 = p4 / p2;
   X(e, 1) = P(e);
   X(e, 2) = p2;
   X(e, 3) = p4;
   X(e, 4) = p4_p2;
end

X