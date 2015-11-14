clear, clc
X = [-1 0 1];
pXY = [3 3 1;
       3 6 3;
       1 3 1] / 24;

% Alinea a   
   
pX = sum(pXY, 2);
pY = sum(pXY);

if pXY == pX * pY
    fprintf('As variaveis X e Y sao independentes.\n');
else
    fprintf('As variaveis X e Y nao sao independentes.\n');
end

% Alinea b

pX2Y2 = zeros(2);
pX2Y2(1, 1) = pXY(2, 2); % 0/0
pX2Y2(1, 2) = pXY(2, 1) + pXY(2, 3); % 0/1
pX2Y2(2, 1) = pXY(1, 2) + pXY(3, 2); % 1/0
pX2Y2(2, 2) = pXY(1, 1) + pXY(1, 3) + pXY(3, 1) + pXY(3, 3); % 1/1
pX2Y2

% Alinea c

X2 = X.^2 * pX
Y2 = X.^2 * pY'
X3 = X.^3 * pX
Y3 = X.^3 * pY'

% Alinea d

Z2 = sqrt(4 + X).^2 * pX
Z3 = sqrt(4 + X).^3 * pX
