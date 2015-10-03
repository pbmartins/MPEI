N = 1e6;
L = 2;
P_sair_face_x = 1/5;

X_nenhuma_face = sum(sum(rand(L, N) > P_sair_face_x) > 1);
P_sair_uma_face = 1 - X_nenhuma_face / N % P(B) = P(C)
X_sair_face_2_face_5 = sum(sum(rand(L, N) <= P_sair_face_x) == 2);
P_sair_2_face_5 = X_sair_face_2_face_5 / N % P(A)

P_A_and_B = 1/5 * P_sair_uma_face % P(AandB) = P(A|B) * P(B) = 1/5 * P(B)
P_A_times_B = P_sair_2_face_5 * P_sair_uma_face
