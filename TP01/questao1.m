clc
clear;

% Caracteristicas do motor
% Preset Model 13
Ra = 1.086; % Resistencia de armadura
w0 = 221.3; % Velocidade a vazio
kphi = 1.3; % K phi nominal

Va = 240; % Tensão de terminal
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
legend('Va = 500 V','Va = 375 V','Va = 250 V','Va = 125 V')
hold off