X = [5 50 100];
P = [90 9 1] / 100;

bar(X, P);
grid on;

N = 1e5;
A = zeros(1, N);
for e = 1:N
    x = rand;
    if x < 0.9
        A(e) = 5;
    elseif x < 0.99
        A(e) = 50;
    else
        A(e) = 100;
    end
end

hist(A, [5 50 100], 1);

B = [5*ones(1, 90) 50*ones(1, 9) 100];
B = B( 1+floor(length(B)*rand(1,N)) );

hist(B, [5 50 100], 1);