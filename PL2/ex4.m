X = [0 1 2 3 4 5];
P_theoretical = zeros(1, 6);
N = 5;
p_defeituosa = 0.3;

for e=0:N
    P_theoretical(e + 1) = combination(N, e) * 0.3^e * (1 - 0.3)^(N - e);
end

P_max_2pecas_defeituosas = sum(P_theoretical(1:3))

A = rand(N, 1e6);
Sum = sum(A <= p_defeituosa);
hist(Sum, X);