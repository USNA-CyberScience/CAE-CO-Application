function [RMSE, NRMSE] = RMSE_Calc(y_theory, y_exp, N)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

numerator = (y_exp-y_theory).^2;
RMSE = sqrt(sum(numerator)/N);
NRMSE = 100*RMSE/(max(y_theory)-min(y_theory));
end

