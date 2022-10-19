clc
clear;

% Características do motor
Ra = 1.086; % Resistencia de armadura
Ia = 1.672;
Laf = 0.6458;
If = 1.667;
B = 0.0034;
Va = 240; % Tensão de terminal
Tem = 1.8;

kphi = Laf * If; % K phi nominal
w0 = (Va*kphi)/(Ra * B + kphi*kphi) % Velocidade a vazio = 222.24

Pmech = linspace(0,w0,100000); % Potência mecânica
Te = kphi*((Va-kphi*Pmech))/Ra;
plot(Pmech,Te,'LineWidth',2)

title('Torque x Velocidade')
ylabel('T_{mec} [N.m]')
xlabel('Velocidade [rad/s]')
grid on
hold on

kphi = 1.07*0.9; % K phi 90%
Te = kphi*((Va-Pmech*kphi))/Ra;
plot(Pmech,Te,'LineWidth',2)
hold on

kphi = 1.07*0.8; % K phi 80%
Te = kphi*((Va-Pmech*kphi))/Ra;
plot(Pmech,Te,'LineWidth',2)
hold on

kphi = 1.07*0.7; % K phi 70%
Te = kphi*((Va-Pmech*kphi))/Ra;
plot(Pmech,Te,'LineWidth',2)
legend('k\phi = 1.07','k\phi = 0.96','k\phi = 0.85','k\phi = 0.74')
hold off