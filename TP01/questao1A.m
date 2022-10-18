clc
clear;

% Caracteristicas do motor
% Preset Model 13
Ra = 1.086; % Resistencia de armadura
Laf = 0.6458;
If = 1.667;
B = 0.003;
Va = 240; % Tensão de terminal
Tem = 1.8;

kphi = Laf * If % K phi nominal
w0 = (kphi*Va - Tem*Ra)/(kphi*kphi) % Velocidade a vazio = 238.18

Pmech = linspace(0,w0,100000); % Potência mecânica

Te = kphi*((Va-kphi*Pmech))/Ra;
plot(Pmech,Te,'LineWidth',2)

title('Torque x Velocidade')
ylabel('T_{mec} [N.m]')
xlabel('Velocidade [rad/s]')
grid on
hold on

Va2 = 240*0.75; % Tensão de terminal 75%
Te = kphi*((Va2-Pmech*kphi))/Ra;
plot(Pmech,Te,'LineWidth',2)
hold on

Va3 = 240*0.5; % Tensão de terminal 50%
Te = kphi*((Va3-Pmech*kphi))/Ra;
plot(Pmech,Te,'LineWidth',2)
hold on

Va4 = 240*0.25; % Tensão de terminal 25%
Te = kphi*((Va4-Pmech*kphi))/Ra;
plot(Pmech,Te,'LineWidth',2)

legend('Va = 240 V','Va = 180 V','Va = 120 V','Va = 60 V')
hold off