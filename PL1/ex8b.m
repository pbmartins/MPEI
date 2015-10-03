N = 1e6;
% 1 ser rapaz
% 0 ser rapariga
E = 5; % elementos da fam?lia
A = round(rand(E, N));
Count_2_boys = sum(sum(A) >= 2);
Count_boys = sum(sum(A) >= 1);
P = Count_2_boys / Count_boys