numberOfCycles = 3;         % Number of cycles of sine wave
t = 0:0.01:numberOfCycles;  % time vector as an independent veriable

wave1 = sin(2 * pi * t);    % calculate wave-1

for i = 2 * pi * t
    wave2 = sin(2 * pi * t - i);         % shift and calculate the wave which will interfere
    interference_res = wave1 +  wave2;   % Add by principle of superposition and compute resultent

    %%------------------- Plot individual waves
    subplot(2, 1, 1);
    plot(t, wave1, '.', t, wave2, 'o');
    title('Two sine waves with three Cycles smae frequency getting phase-shift');
    ylabel('Amplitube -- >');
    xlabel('Angle (Phase) -->');

    %%------------------- Plot Results
    subplot(2, 1, 2);
    plot(t, interference_res);
    title('Graph of Interference');
    xlabel('-- Result -- ');
    ylabel('Amplitude -->');
    axis([0 numberOfCycles -2 2]);

    %%------------------- Wait to display
    pause(0.08);
end

clear all