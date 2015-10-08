Xi = [1 3 4];
Pi = [0.2 0.5 0.3];

x = fpm(Xi, Pi, 1000);
sum(x == 1) / N