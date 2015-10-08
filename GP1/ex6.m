N = 1e6;
X = ceil(rand(2, N) .* 5);

P_A = sum(sum(X) == 10) / N
P_B = sum(sum(X == 5) > 0) / N
P_C = sum(sum(X == 1) > 0) / N
P_D = sum(sum(X) == 7) / N
P_E = sum(abs(X(1,:) - X(2,:)) == 1) / N
P_F = sum((X(2,:) - X(1,:)) > 0) / N

% Alinea a)
P_AB = sum(sum(X) == 10 & sum(X == 5) > 0) / N;
if P_AB == P_A * P_B
    fprintf('A e B sao independentes.\n');
else
    fprintf('A e B nao sao independentes.\n');
end

P_AC = sum(sum(X) == 10 & sum(X == 1) > 0) / N;
if P_AC == P_A * P_C
    fprintf('A e C sao independentes.\n');
else
    fprintf('A e C nao sao independentes.\n');
end

% Alinea b)
P_EF = sum(abs(X(1,:) - X(2,:)) == 1 & (X(2,:) - X(1,:)) > 0) / N;
if P_EF == P_E * P_F
    fprintf('E e F sao independentes.\n');
else
    fprintf('E e F nao sao independentes.\n');
end

P_EF_D = sum(abs(X(1,:) - X(2,:)) == 1 & (X(2,:) - X(1,:)) > 0 & sum(X) == 7) / (N * P_D);
P_E_D = sum(abs(X(1,:) - X(2,:)) == 1 & sum(X) == 7) / (N * P_D);
P_F_D = sum((X(2,:) - X(1,:)) > 0 & sum(X) == 7) / (N * P_D);

if P_EF_D == P_E_D * P_F_D
    fprintf('E e F sao independentes, dado D.\n');
else
    fprintf('E e F nao sao independentes, dado D.\n');
end
