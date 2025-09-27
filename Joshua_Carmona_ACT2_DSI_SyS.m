% Simulacion de transformada rapida Fourier - 27/09/2025

% Frecuencia de muestreo
Fs = 1000;
% Periodo de muestreo
T = 1/Fs;
% Tamaño de la señal
L = 1000;
% Vector de tiempo
t = (0:L-1)*T; 

% Suma de dos señales senoidales: 30 y 40 Hz
S1 = sin (2*pi*30*t);
S2 = sin (2*pi*40*t);

S = S1 + S2;

% Funcion de transformada rapida
Y = fft(S);

% Espectros bilateral, unilateral basado en bilateral y longitud
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

% Multiplicacion de todas las frecuencias
f = Fs*(0:(L/2))/L;
figure()
plot(f,P1)
title('Espectro de amplitudes de las frecuencias de X(t)')
xlabel('f (Hz)')
ylabel('A (f)')

% Act 2 - Señales y Sistemas - Joshua Carmona / 87733