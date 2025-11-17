% Simulacion de modulacion de amplitud (AM) - 16/11/2025

% Muestreo de señal

N = 970; % Numero de muestras
Fs = 1000; % Frecuencia de muestreo
Ts = 1/Fs; % Periodo de muestreo
t = (0:N-1).*Ts; % Vector de muestreo

% Señal moduladora

m = 0.6; % Indice de modulacion
Fmod = 10; % Frecuencia de la señal moduladora
Amod = 7; % Amplitud de la señal moduladora
s_mod = Amod*sin(2*pi*Fmod.*t); % Señal moduladora

% Graficacion de señal
subplot (2, 1, 1), plot(t, s_mod)
title('Grafica de señal')

% Señal portadora

Apor = (Amod)/m; % Amplitud de la señal portadora
Fpor = 175; % Frecuencia de la señal portadora
s_por = Apor*cos(2*pi*Fpor.*t); % señal portadora

% Modulacion AM

am = ammod(s_mod, Fpor, Fs, 0, Apor);
figure(2)
plot(t,am)
 
% Act 4 - Señales y Sistemas - Joshua Carmona / 87733