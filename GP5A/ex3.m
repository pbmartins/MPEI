T = rand(20, 20);
T = bsxfun(@rdivide,T,sum(T,1));

T20 = T^20;
p20_X20 = T20(20)
T40 = T20 * T20;
p20_X40 = T40(20)
T100 = (T^20)^5;
p20_X100 = T100(20)

% helper = X1;
% X = X1;
% for i = 2:100
%     helper = T * helper;
%     X = [X helper];
% end
% X_sum = cumsum(X);
% 
% p20_X20 = X_sum(20, 20)
% p20_X40 = X_sum(20, 40)
% p20_X100 = X_sum(20, 100)