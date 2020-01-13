% t = linspace(0, tout(end), length(yMeas));
% yM = interp1(tout, yMeas, t);
% yT = interp1(tout, yT, t);
% 
% tt = linspace(0, tout(end)/2, length(yMeas)); 
% plot(tt, yT, tt, yM)
figure(1)
p1 = plot(tout,yTrue,tout,yMeas);
set(p1(1), 'LineWidth', 2)
ylabel('Angular Position (rad)')
xlabel('Time (s)')
xticks(0:10:40)
xlim([0 35])
xticklabels({'0','5','10', '15', '20'})
legend('True Position', 'Measured Position')
legend('boxoff')
