%% Lab 2 - Part 2
clear all
close all
clc

m = 1; %kg
b = 1; %N-s/m

tf = 6; 		%stop time
maxstep = 0.01; 	%maximum step size
tol = 1e-6;		%error tolerance

%% Forced Response
f = 10; %N
v0 = 0;		%initial condition

sim('Lab02_Part2')
tout_forced = tout;
velocity_forced = velocity;

%% Natural Response
f = 0; %N
v0 = 5;		%initial condition

sim('Lab02_Part2')
tout_natural = tout;
velocity_natural = velocity;

%% Total Response
f = 10; %N
v0 = 5;		%initial condition

sim('Lab02_Part2')
tout_total = tout;
velocity_total = velocity;

%% Plotting
figure(1)
plot(tout_forced, velocity_forced, 'r:', tout_natural, velocity_natural,...
    'b--', tout_total, velocity_total, 'k-')
xlabel('Time (s)')
ylabel('Velocity (m/s)')
legend('Forced', 'Natural', 'Total')
title('Simulation of Mass-Damper System')

%% Lab 2 - Part 3
% 
% 2nd Order System
close all
m = 2;
b = 1;
k = 20;
force = 6;
tf = 20;
tol = 1e-6;

% ICs
x0 = 0.2;
xdot0 = -1;

sim('Lab02_Part3.slx')
figure(2)
plot(tout, x, tout, xdot)
legend('Position', 'Velocity')
ylabel('Position / Velocity')
xlabel('Time (s)')
