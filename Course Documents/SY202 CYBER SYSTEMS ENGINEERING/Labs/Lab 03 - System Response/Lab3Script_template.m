%% Mids Names: 
%  Lab:
%  Date:

clear all       %Clear variables, close figures, and clean command window
close all
clc

%% First Order System Parameters - First Case
a = 1;
num = [a];
den = [1 a];
tfinal = 10;                %Final simulation time, you may adjust this value
sim('Lab3Sim',tfinal)   %sim is the MATLAB command to run your simulink model, 
                    %tf is the final time and Lab3Sim is the name you gave
                    %to the model                   
% Recommendation: After each simulation, you save the time "tout" and
% output "y" into a new variable, otherwise, the variables would be
% overwritten everytime you run the sim command 
% E.g., t_FO_case1 = tout;
%       y_FO_case1 = tout;
t_FO_case1 = tout;     %"tout" is the default name Matlab gives to the time 
                        %vector of your simulation. We are assigning tout
                        %to t_FO_case1 where FO stands for first order
y_FO_case1 = y;         %Use "y" or any other name you assign to your output
                                %in the To Workspace Block
%-After running this section, you can use the scope within your Simulation
%block to estimate settling time
%% First Order System Parameters - Second Case
% First Order System transfer function looks like: G(s)= a/(s+a)
a = 1;                 %Change the value of a
num = [a];             %These are the coefficient of your transfer function numerator
den = [1 a];           %These are the coefficient of your transfer function denominator
tfinal = 10;                
sim('Lab3Sim',tfinal)   %Run simulation, generate new outputs and time vectors
t_FO_case2 = tout;     %We are saving the outcome of your simulation into a new variable
y_FO_case2 = y;         %Use "y" or any other name you assign to your output
%---Check the scope in Lab3Sim to measure Ts
%% First Order System Parameters - Third Case
a = 1;                       %Change the value of a
num = [a];
den = [1 a];
tfinal = 10;                
sim('Lab3Sim',tfinal)   %Run simulation, generate new outputs and time vectors
t_FO_case3 = tout;     %We are saving the outcome of your simulation into a new variable
y_FO_case3 = y;         %Use "y" or any other name you assign to your output
%---Check the scope in Lab3Sim to measure Ts
%% First Order System Parameters - Fourth Case
a = 1;                       %Change the value of a
num = [a];
den = [1 a];
tfinal = 10;                
sim('Lab3Sim',tfinal)   %Run simulation, generate new outputs and time vectors
t_FO_case4 = tout;     %We are saving the outcome of your simulation into a new variable
y_FO_case4 = y;         %Use "y" or any other name you assign to your output
%---Check the scope in Lab3Sim to measure Ts
%% Plot First Order System Response
% Write down the plotting commands, plot all four outputs together. Refer to
% Lab #1 or use "help plot". Do not forget to adjust the x and y limits,
% labels and legend. Use different line styles and color to differentiate cases.

%% Second Order System - Case 0
% Second Order System transfer function looks like: G(s)= wn^2/(s^2+2*zeta*wn*s+wn^2)
wn = 5;
zeta = 0.4;
num = [wn^2];
den = [1 2*zeta*wn wn^2];
tfinal = 10;        %Final simulation time, you may adjust this value
sim('Lab3Sim',tfinal)   %Run simulation, generate new outputs and time vectors
t_SO_case0 = tout;     %We are saving the outcome of your simulation into a new variable
y_SO_case0 = y;         %Use "y" or any other name you assign to your output
%Measure Ts, Tp, %OS. You can either:
%---Use the stepinfo command like:
stepinfo(y_SO_case0,t_SO_case0,y_SO_case0(end))
%---Or check the scope in Lab3Sim to visually measure Ts, %OS, Tp
%% ----Make Copies of the above section to simulate cases 1 to  8 -------
%Do not forget to save the time and output variables everytime you run the
%sim command. Use a descriptive name.

%% Plot Second Order System Response
% Write down the plotting commands. You will divide the results into 2 plots
% for a more clear illustration using the subplot command. Refer to
% Lab #1 or use "help subplot". Do not forget to adjust the x and y limits,
% labels and legend. 
figure('Name', 'Second Order System')
subplot(2,1,1)
% Complete ploting commands.... use "help subplot" and "help plot" if in
% doubt and refer to lab guidelines
% Do not forget axes, legends... 