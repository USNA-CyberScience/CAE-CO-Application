s = tf('s');
G = 45/(s^2+6*s+60);
[y,t] = step(2*G,2);
figure(1)
plot(t,y+2)
xlim([0,2])
set(gca,'YTick', 1.9:.2:4.1)
grid on
%grid Minor
title('Response of NCS')
xlabel('Time(s)')
ylabel('Output (m)')

%%
figure(2)
step(2*G,2);

%%
G = 35/(s^2+6*s+40);
[y,t] = step(1*G,2);
figure(1)
plot(t,y)
hold on
plot(t,ones(length(t),1),'--')
xlim([0,2])
%set(gca,'YTick', 1.9:.2:4.1)
%grid on
%grid Minor
title('Response of NCS')
xlabel('Time(s)')
ylabel('Output (m)')
legend('Output of P Control', 'Desired Output')