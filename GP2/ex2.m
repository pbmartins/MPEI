S = [5 50 100];
P = [9/10 9/100 1/100];

X = cumsum(P);
p = zeros(1, 1e6);
for i = 1:1e6
    x = rand;
    if x <= 0.9
        p(i) = 5;
    elseif x <= 0.99
        p(i) = 50;
    else
        p(i) = 100;
    end
end

bar(S, [sum(p == 5) sum(p == 50) sum(p == 100)] / 1e6);