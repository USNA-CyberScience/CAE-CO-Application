%% Section 1
a = 2;
b = 3;
c = a + b;
fprintf('c = %f', c);

%% Section 2
clear all % clears all variables in the workspace
clc % clears command window
Lab01_4_experiment_results; % Generates theoretical and “experimental” 
%signals in MATLAB workspace
NumSamp = length(theory_signal);
[RMSE,NRMSE]=RMSE_Calc(theory_signal,noisy_signal,NumSamp)
