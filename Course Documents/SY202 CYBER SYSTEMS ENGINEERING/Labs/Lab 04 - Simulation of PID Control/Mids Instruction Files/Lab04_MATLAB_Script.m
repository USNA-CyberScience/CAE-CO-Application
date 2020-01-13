% PID Control of a Wheel
% SY202 Cyber Systems Engineering Lab
clear all
clc
close all

% Wheel's Parameter
Jw = 4;         %Inertia of wheel
bw = 1;         %Coefficient of friction

% Motor Paramters
DCm = 2;        %Motor's DC gain
taum = 0.5;     %Motor's time constant

% Control Parameters
r = 10;         %Desired Wheel's Speed (rev/sec)
CM = 1;         %Select Control Mode, CM=0 for Open-Loop, CM=1 for Closed-loop
KP = 10;         %Proportional Gain
KI = 2;         %Integral Gain
KD = 3;         %Derivative Gain

% External Disturbance Parameters
tdisturbance = 8;   %Start time of disturbance
Disturbance = -5;    %Constant-Value of disturbance

% Run Simulation
tfinal = 25;        %End time of simulation
sim('PID_Control_Wheel', tfinal)  %Command to call the simulink model

%Ploting and computation
if CM
    figTitle = sprintf('Closed-Loop Control; KP: %.1f, KI: %.1f, KD: %.1f',KP,KI,KD);
else
    figTitle = sprintf('Open-Loop Control; KP: %.1f, KI: %.1f, KD: %.1f',KP,KI,KD);
end
figure('Name', figTitle)
axes('Position', [0.1 0.1 0.4 0.8], 'Box', 'on') %Set location of plot
plot(tout, y)
xlim([0 tfinal])
xlabel('Time (s)')
ylabel('Wheel Speed (rev/s)')
title('Wheel Time Response')
axes('Position', [0.6 0.6 0.35 0.3], 'Box', 'on')
plot(tout, r - y)
xlim([0 tfinal])
xlabel('Time (s)')
ylabel('Error Signal (rev/s)')
title('Error Time Response')
axes('Position', [0.6 0.1 0.35 0.3], 'Box', 'on')
plot(tout, u)
xlim([0 tfinal])
xlabel('Time (s)')
ylabel('Control Signal (V)')
title('Control Signal')

% Performance Data
display('------------------- NEW Data -----------------------')
display(figTitle)
PerformanceData = stepinfo(y, tout) %Provides Time Response Data to Step Input
SteadyStateError = r-y(end)         %Computes Steady State Error
ControlSignalSteadyState = u(end)   %Print Steady State value of control signal
