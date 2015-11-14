% an example state transition matrix (page 3 is absorving)
H = [0.9 0.1 0 ;
0.5 0.4 0.1 ;
0 0 1 ];
% the fundamental matrix
Q = H(1:2,1:2);
F = inv(eye(2)-Q)

% how to use crawl()
state = crawl(H, 1, 3);