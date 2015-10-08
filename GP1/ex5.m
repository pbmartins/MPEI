N = 1e6;

P_Winter = 0.5;
P_FRain_Winter = 0.7;
P_FRain_Summer = 0.2;
P_Rain_FRain = 0.8;
P_Rain_FNoRain = 0.1;

X = rand(3, N);
P_FR_Rain_Winter = sum(X(1,:) <= P_Winter & X(2,:) <= P_FRain_Winter & X(3,:) <= P_Rain_FRain) / N;
P_Rain_Winter = (sum(X(1,:) <= P_Winter & X(2,:) <= P_FRain_Winter & X(3,:) <= P_Rain_FRain) + sum(X(1,:) <= P_Winter & X(2,:) <= (1 - P_FRain_Winter) & X(3,:) <= P_Rain_FNoRain)) / N;
P_FR_kn_Rain_Winter = P_FR_Rain_Winter / P_Rain_Winter;

fprintf('Probabilidade de a previsao ser Chuva, sabendo que choveu e e inverno: %f\n', P_FR_kn_Rain_Winter);