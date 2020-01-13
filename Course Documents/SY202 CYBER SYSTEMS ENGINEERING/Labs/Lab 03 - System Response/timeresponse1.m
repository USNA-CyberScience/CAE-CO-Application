function [sd, wd, OS, Ts, Tp] = timeresponse1(zeta, wn)
% Compute time response characteristics based on damping ratio and natural
% frequency
% zeta = damping ration
% wn = natural freq
% sd = real location of the poles
% wd = imaginary part of poles
% OS = Percentage of OS
% Tp = peak time
% Ts = settling time
% Polynomial: s^2+2*zeta*wn*s+wn^2
poles = roots([1 2*zeta*wn wn^2]);  
sd = abs(real(poles(1)));  
wd = abs(imag(poles(1)));  
Ts = 4/(zeta*wn);
Tp = pi/(wn*sqrt(1-zeta^2));
OS = exp(-zeta*pi/sqrt(1-zeta^2))*100;
end

