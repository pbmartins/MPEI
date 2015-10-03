x = 10*rand(1,1e6);
p1 = sum(x<3) / 1e6
p2 = sum(x>7) / 1e6
p3 = length(find(x>1 & x<6))/1e6