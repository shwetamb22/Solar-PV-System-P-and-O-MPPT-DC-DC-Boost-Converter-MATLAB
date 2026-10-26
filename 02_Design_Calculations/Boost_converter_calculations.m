%% Boost converter design for a 3 MW solar PV system
% Sizes L, C, R and duty cycle for the boost stage.
clear; clc;

%% Design inputs
P    = 3e6;       % Rated power (W)
Vin  = 383.5;     % Converter input voltage (V)
Vout = 600;       % Required output voltage (V)
fs   = 10e3;      % Switching frequency (Hz)

ripple_I = 0.01;  % Inductor-current ripple (1% of input current)
ripple_V = 0.01;  % Output-voltage ripple (1% of output voltage)

%% Currents and ripple targets
Iin   = P/Vin;                % Input (inductor) current (A)
Iout  = P/Vout;               % Output current (A)
dIL   = ripple_I*Iin;         % Inductor-current ripple (A)
dVout = ripple_V*Vout;        % Output-voltage ripple (V)

%% Design equations
D = (Vout - Vin)/Vout;                  % Duty cycle
L = (Vin*(Vout - Vin))/(dIL*fs*Vout);   % Inductance (H)
C = (Iout*(1 - Vin/Vout))/(fs*dVout);   % Capacitance (F)
R = Vout/Iout;                          % Equivalent load resistance (ohm)

%% Results
fprintf('Input current   Iin  = %.1f A\n',  Iin);
fprintf('Output current  Iout = %.1f A\n',  Iout);
fprintf('Current ripple  dIL  = %.2f A\n',  dIL);
fprintf('Duty cycle      D    = %.4f (%.2f %%)\n', D, D*100);
fprintf('Inductance      L    = %.4e H (%.2f uH)\n', L, L*1e6);
fprintf('Capacitance     C    = %.4f F (%.2f mF)\n', C, C*1e3);
fprintf('Load resistance R    = %.4f ohm\n', R);