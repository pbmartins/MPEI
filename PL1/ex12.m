N = 1e6;
N_Words = 20;
N_Sentence = 5;
P_1KNOW2 = saiuxsabendoy(N_Words, N_Sentence, N);
fprintf('P(sair 1 | saiu 2) = %f\n', P_1KNOW2);
m = [20, saiuxsabendoy(N_Words, N_Sentence, N); 10, saiuxsabendoy(10, N_Sentence, N); 7, saiuxsabendoy(N_Words, N_Sentence, N); 15, saiuxsabendoy(N_Words, N_Sentence, N)]
hist(m, 5)