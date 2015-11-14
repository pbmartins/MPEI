clear, clc

p = 0.4;
q = 0.6;

T = [p^2 0 0 q^2;
     (1 - p)^2 0 0 q*(1 - q);
     p*(1 - p) 0 0 q*(1 - q);
     p*(1 - p) 1 1 (1 - q)^2]
 
X0 = [1 0 0 0]';

X10 = T^10 * X0;
fprintf('Probabilidade de chegar ao estado B apos 10 transicoes: %f\n', X10(2));
fprintf('Probabilidade de chegar ao estado A apos 10 transicoes: %f\n', X10(1));
fprintf('Probabilidade de chegar ao estado C apos 10 transicoes: %f\n', X10(3));
fprintf('Probabilidade de chegar ao estado D apos 10 transicoes: %f\n', X10(4));