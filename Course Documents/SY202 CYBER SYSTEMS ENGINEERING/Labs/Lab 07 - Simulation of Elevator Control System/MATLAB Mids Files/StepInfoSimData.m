% Compute step response data (settling time, rise time, %OS, etc...

% Run this piece of code once the simulation is complete
% Keep in mind that signals are noisy and MATLAB can pick outliers for the
% analysis. Make sure that the outcome makes senses. 

tim = SimData.time;
height = SimData.signals.values(:,2);
analog = SimData.signals.values(:,1);
measHe = SimData.signals.values(:,3);

ST = 0.2;   % Change percentage (band) of settling time from default 2% to 20%

% Response data based on actual height
stepinfo(height, tim, 'SettlingTimeThreshold',ST)

% Response Data based on measured height
stepinfo(measHe, tim, 'SettlingTimeThreshold',ST)