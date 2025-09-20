% Three-phase voltage simulation

f = 50
V = 220 % Peak voltage
t = 0:0.0001:0.05;  % Time vector (0 to 50ms)

% Phase voltages (balanced system)
Va = V*cos(2*pi*f*t - 0)
Vb = V*cos(2*pi*f*t - 2*pi/3)
Vc = V*cos(2*pi*f*t - 4*pi/3)

% Plotting
figure
plot(t, Va, 'r', t, Vb, 'g', t, Vc, 'b', 'LineWidth', 1.5)
grid on

xlabel('Time (s)')
ylabel('Voltage (V)')
title('Three-Phase Voltages')
legend('Va', 'Vb', 'Vc')

