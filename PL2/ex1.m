p = ones(1,6)/6;
x = 1:6;
plot(x, p, '.r');
stem(x, p);

subplot(1, 2, 1);
bar(x, p);

axis([0 7 0 1]);
subplot(1, 2, 2);
bar(x, cumsum(p));