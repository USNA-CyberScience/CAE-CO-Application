function experiment_results

time = 0:.1:20; % time array

amps = [1;3;6;2;4]; % amplitude of sinusoids
freqs = [0.5;0.25;0.05;0.02;0.2]; % frequency of sinusoids

% "Perfect" signal with no noise
theory_signal = sum(repmat(amps,1,length(time)).*sin(2*pi*repmat(freqs,1,length(time)).*repmat(time,length(amps),1)),1);


rng(1003) % set seed of random number generator for consistency
noisy_signal = theory_signal +1.5*randn(1,length(time)); % generate noisy data

% plot result
figure(1); clf
plot(time,theory_signal,'-b','Linewidth',2)
hold on
plot(time,noisy_signal,'-r','Linewidth',2)
xlabel('Time (seconds)')
ylabel('Measurement (Volts)')
title('Expected Measurement vs. Noisy Experimental Measurement')
legend('Expected Signal','Actual Measurement')

% assign variables to workspace
assignin('base','theory_signal',theory_signal)
assignin('base','noisy_signal',noisy_signal)
assignin('base','time',time)

% % Optional: Save data to .mat file
% save('experimental_results.mat','theory_signal','noisy_signal')
end

