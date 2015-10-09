x = logspace(-1, -0.046, 100);
P_diference = zeros(1, 100);
i = 0;
for p = x
    P_two_engines = p^2;
    P_four_engines = factorial(4) / factorial(4-3) / factorial(3) * p^3 * (1 - p)^(4 - 3) + p^4;

    i = i + 1;
    P_diference(i) = P_four_engines / P_two_engines;
    
    if P_four_engines / P_two_engines > 1
        fprintf('E mais seguro um aviao com 2 motores\n');
    else
        fprintf('E mais seguro um aviao com 4 motores\n');
    end
end

fprintf('E mais seguro um aviao com 4 motores com uma probabilidade ate %f\n', x(find(P_diference > 1, 1)));