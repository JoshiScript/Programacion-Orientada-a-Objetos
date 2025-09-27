% Simulacion de señal senoidal - 27/09/2025

% Frecuencia de muestreo
Fs = 1000;
% Periodo de muestreo
T = 1/Fs;
% Tamaño de la señal
L = 1000;
% Vector de tiempo
t = (0:L-1)*T; 

% Suma de dos señales senoidales: 70 y 80 Hz
S1 = sin (2*pi*70*t);
S2 = sin (2*pi*80*t);

S = S1 + S2;

plot(t, S)
title('Simulacion de señal senoidal')
xlabel('t (ms)')
ylabel('X(t)')

% Act 1 - Señales y Sistemas - Joshua Carmona / 87733