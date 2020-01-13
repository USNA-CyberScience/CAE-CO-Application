clear all
close all
clc
% System Parameters
m = 100; 
b = 1;
% Time parameters
tf = 600;
maxstep = 0.01;
tol = 1e-6;

%Force parameters
f = 10;
v0 = 0;

sim('lab02_class')


%% Plotting
figure(2)
plot(tout,velocity)
xlabel('Time (s)')
ylabel('Velocity (m/s)')
title('Velocity vs Time')