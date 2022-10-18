clc
clear;

% Características do motor
Ra = 1.086; % Resistência de armadura

n0 = 184.61; % Velocidade nominal
kphi = 1.3;
Va = 240; % Tensão de terminal
velo = linspace(0,n0,100000);% Potência mecânica
tem = kphi*((Va-velo*kphi))/Ra;

plot(velo,tem,'LineWidth',2)
ylabel('T_{mec} [N.m]')
title('Torque x Velocidade')
xlabel('Velocidade [rad/s]')

grid on
hold on
kphi = 1.3*0.9;

%velo = linspace(0,n0,100000);% Potência mecânica
tem = kphi*((Va-velo*kphi))/Ra;
plot(velo,tem,'LineWidth',2)
hold on
kphi=1.3*0.80;

%velo = linspace(0,n0,100000);% Potência mecânica
tem = kphi*((Va-velo*kphi))/Ra;
plot(velo,tem,'LineWidth',2)
hold on
kphi = 1.3*0.7;

%velo = linspace(0,n0,100000);% Potência mecânica
tem = kphi*((Va-velo*kphi))/Ra;
plot(velo,tem,'LineWidth',2)
legend('k\phi = 100%','k\phi = 90%','k\phi = 80%','k\phi = 70%')
hold off