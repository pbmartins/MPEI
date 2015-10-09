S = [1 2 3 4];
f(x) = (x + 5) / 30;

if sum(f(S)) == 1
    fprintf('F(x) representa a distribuicao de probabilidades de S.\n');
else
    fprintf('F(x) nao representa a distribuicao de probabilidades de S.\n');
end