alpha = 15;
k = 0:100;
p = alpha.^k./factorial(k).*exp(-alpha);
plot(k, p);

E = sum(k.*p)
p(1) % probabilidade de nenhuma mensagem
sum(p(12:end)) % probabilidade de mais de 10 mensagens chegarem ao PC
sum((k > 10).*p)
sum(p(find(k==0)))