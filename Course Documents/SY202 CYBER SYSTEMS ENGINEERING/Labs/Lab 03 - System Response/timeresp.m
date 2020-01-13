function [OS, Ts, Tp, sd, wd] = timeresp(zeta,wn)
%Compute time response characteristics of a second order system
% OS - %Overshoot
% Ts - settling time
% Tp - peak time
% sd - real part of poles
% wd - imag part of poles
% zeta - damping ratio
% wn - natural freq

poles = roots([1 2*zeta*wn wn^2]);  
sd = abs(real(poles(1)));  
wd = abs(imag(poles(1)));  

Ts = 4/(zeta*wn);
Tp = pi/(wn*sqrt(1-zeta^2));
OS = exp(-zeta*pi/sqrt(1-zeta^2))*100;
end

