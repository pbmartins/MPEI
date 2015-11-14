clear, clc

% Alinea a
T = [0.7 0.2 0.1
     0.2 0.3 0.5
     0.3 0.3 0.4]';
 
% Alinea b
X0 = [1 0 0]';
X2 = T * T * X0;
fprintf('Probabilidade de chuva no dia 2: %f\n', X2(2));

% Alinea c
Ttotal = T(:);
helper = T;
for i = 1:20
    helper = helper * T;
    Ttotal = [Ttotal helper(:)];
end

subplot(1, 2, 1);
plot(Ttotal');

% Alinea d
Ttotal = T(:);
helper = T;
diff = 1;
while diff > 10^-4
    last = helper;
    helper = helper * T;
    diff = max(abs(helper - last));
    Ttotal = [Ttotal helper(:)];
end

subplot(1, 2, 2);
plot(Ttotal');