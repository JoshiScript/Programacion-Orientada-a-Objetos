% Simulacion de filtros digitales FIR e IIR - 09/11/2025

clear
close all
clc

% Frecuencia de muestreo
Fs = 1000;
% Periodo de muestreo
T = 1/Fs;
% Tamaño de la señal
L = 1000;
% Vector de tiempo
t = (0:L-1)*T; 

S1 = sin (2*pi*30*t);
S2 = sin (2*pi*40*t);

s = S1 + S2 + 4*randn(size(t));

% Filtro FIR %

% Orden de filtro
n = 80;
% Restricciones en frecuencia (valor entre 0 y 1)
Wn = 0.68;
% Tipo de filtro
ftype = 'low';

% Filtro basado en ventanas
b = fir1(n,Wn,ftype);
% Da la señal filtrada
sf1 = filter(b, 1, s);

subplot(3, 1 ,1)
plot(s)
subplot(3, 1, 2)
plot(sf1)

% Filtro IIR %

% frecuencia de corte
fc = 500;
% Orden de filtro 
n = 6;
% Frecuencia de corte
Wn = 0.68;

[b, a] = butter(n, Wn, 'low');
%Respuesta de frecuencia del filtro digital
freqz(b,a)

%Señal filtrada
sf2 = filter(b, a, s);
subplot(211)
plot(s)
subplot(212)
plot(sf2)

% Act 3 - Señales y Sistemas - Joshua Carmona / 87733