clear all
close all
clc
% System Parameters
m = 1;
b = 1;

% Simulation Parameters
tf = 6;
maxstep = 0.01;
tol = 1e-6;

% Run Simulation
f = 10;
v0 = 0;
sim('Lab02_class')

%% Plotting
figure(1)
plot(tout,velocity)
xlabel('Time (s)')
ylabel('Velocity (m/s)')
title('Velocity vs Time')