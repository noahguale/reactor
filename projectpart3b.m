clear all;
close all;


[Z,X]=ode45(@Project,[0,1.504],[1 1 1 1 1 1 1 40 0 0 0 0 0 0 0 0 0 2 673.15 323.15 1]);%For Tao = 50 oC
% [Z,X]=ode45(@Project,[0,1.504],[1 1 1 1 1 1 1 40 0 0 0 0 0 0 0 0 0 2 673.15 373.15 1]);%For Tao = 100 oC
% [Z,X]=ode45(@Project,[0,1.504],[1 1 1 1 1 1 1 40 0 0 0 0 0 0 0 0 0 2 673.15 423.15 1]);%For Tao = 150 oC
% [Z,X]=ode45(@Project,[0,1.504],[1 1 1 1 1 1 1 40 0 0 0 0 0 0 0 0 0 2 673.15 473.15 1]);%For Tao = 200 oC
% [Z,X]=ode45(@Project,[0,1.504],[1 1 1 1 1 1 1 40 0 0 0 0 0 0 0 0 0 2 673.15 523.15 1]);%For Tao = 250 oC
% [Z,X]=ode45(@Project,[0,1.504],[1 1 1 1 1 1 1 40 0 0 0 0 0 0 0 0 0 2 673.15 573.15 1]);%For Tao = 300 oC
% [Z,X]=ode45(@Project,[0,1.504],[1 1 1 1 1 1 1 40 0 0 0 0 0 0 0 0 0 2 673.15 623.15 1]);%For Tao = 350 oC

% Plot for Temperature
% plot(Z,X(:,19),'-',Z,X(:,20),'-');
% title('Temperatures vs length');
% xlabel("Length, (m)");
% ylabel("T, K");
% legend('T','Ta');



function X = Project(Z,X)
R = 8.3145; % J/(K.mol)
betao = 69544; %atm/m
Po = 2; %atm
To = 673.15; %K
FTo = 48; %mol/s
Ac = 0.001662; % m2
Ua = 17013; %kJ/(s.m3.K)
moil = 19.443; % kg/s

A1 = 100.12; % mol/sec/atm
A2 = 12.1548; % mol/sec/atm
A3 = 10.2508; % mol/sec/atm
A4 = 15.185; % mol/sec/atm
A5 = 225.1; % mol/sec/atm
A6 = 215.443; % mol/sec/atm
A7 = 120.51; % mol/sec/atm
A8 = 241.53; % mol/sec/atm
A9 = 151.51; % mol/sec/atm
A10 = 845.13; % mol/sec/atm
A11 = 1214.88; % mol/sec/atm
A12 = 4546.84; % mol/sec/atm
A13 = 4546.46; % mol/sec/atm
A14 = 79842.13; % mol/sec/atm
A15 = 1694.63; % mol/sec/atm
A16 = 2000.01; % mol/sec/atm
A17 = 2032.10; % mol/sec/atm
A18 = 1021.05; % mol/sec/atm
A19 = 20011; % mol/sec/atm
A20 = 157810; % mol/sec/atm
A21 = 120305; % mol/sec/atm
A22 = 10235; % mol/sec/atm
A23 = 102369; % mol/sec/atm
A24 = 102547; % mol/sec/atm


E1 = 29.1 * 1000; % J/mol
E2 = 19.8 * 1000; % J/mol
E3 = 25.6 * 1000; % J/mol
E4 = 22.9 * 1000; % J/mol
E5 = 15.8 * 1000; % J/mol
E6 = 30.1 * 1000; % J/mol
E7 = 32.7 * 1000; % J/mol
E8 = 31.6 * 1000; % J/mol
E9 = 23.9 * 1000; % J/mol
E10 = 24 * 1000; % J/mol
E11 = 24.8 * 1000; % J/mol
E12 = 122 * 1000; % J/mol
E13 = 151 * 1000; % J/mol
E14 = 108 * 1000; % J/mol
E15 = 98 * 1000; % J/mol
E16 = 103 * 1000; % J/mol
E17 = 20.1 * 1000; % J/mol
E18 = 10.2 * 1000; % J/mol
E19 = 20.1 * 1000; % J/mol
E20 = 60.5 * 1000; % J/mol
E21 = 60.4 * 1000; % J/mol
E22 = 20.2 * 1000; % J/mol
E23 = 20.5 * 1000; % J/mol
E24 = 20.6 * 1000; % J/mol

Ke5 = 13.1; % Equilibrium constant, atm
Ke6 = 12.8; % Equilibrium constant, atm
Ke7 = 10; % Equilibrium constant, atm
Ke8 = 10.2; % Equilibrium constant, atm
Ke9 = 16.2; % Equilibrium constant, atm
Ke10 = 14.8; % Equilibrium constant, atm
Ke11 = 17.9; % Equilibrium constant, atm
Ke12 = 18; % Equilibrium constant, atm
Ke13 = 14.6; % Equilibrium constant, atm
Ke14 = 9; % Equilibrium constant, atm
Ke15 = 14.2; % Equilibrium constant, atm

k1 = A1 * exp(-E1 / R / X(19)); % mol/ sec/ atm
k2 = A2 * exp(-E2 / R / X(19)); % mol/ sec/ atm
k3 = A3 * exp(-E3 / R / X(19)); % mol/ sec/ atm
k4 = A4 * exp(-E4 / R / X(19)); % mol/ sec/ atm
k5 = A5 * exp(-E5 / R / X(19)); % mol/ sec/ atm
k6 = A6 * exp(-E6 / R / X(19)); % mol/ sec/ atm
k7 = A7 * exp(-E7 / R / X(19)); % mol/ sec/ atm
k8 = A8 * exp(-E8 / R / X(19)); % mol/ sec/ atm
k9 = A9 * exp(-E9 / R / X(19)); % mol/ sec/ atm
k10 = A10 * exp(-E10 / R / X(19)); % mol/ sec/ atm
k11 = A11 * exp(-E11 / R / X(19)); % mol/ sec/ atm
k12 = A12 * exp(-E12 / R / X(19)); % mol/ sec/ atm
k13 = A13 * exp(-E13 / R / X(19)); % mol/ sec/ atm
k14 = A14 * exp(-E14 / R / X(19)); % mol/ sec/ atm
k15 = A15 * exp(-E15 / R / X(19)); % mol/ sec/ atm
k16 = A16 * exp(-E16 / R / X(19)); % mol/ sec/ atm
k17 = A17 * exp(-E17 / R / X(19)); % mol/ sec/ atm
k18 = A18 * exp(-E18 / R / X(19)); % mol/ sec/ atm
k19 = A19 * exp(-E19 / R / X(19)); % mol/ sec/ atm
k20 = A20 * exp(-E20 / R / X(19)); % mol/ sec/ atm
k21 = A21 * exp(-E21 / R / X(19)); % mol/ sec/ atm
k22 = A22 * exp(-E22 / R / X(19)); % mol/ sec/ atm
k23 = A23 * exp(-E23 / R / X(19)); % mol/ sec/ atm
k24 = A24 * exp(-E24 / R / X(19)); % mol/ sec/ atm

Ftot = X(1) + X(2) + X(3) + X(4) + X(5) + X(6) + X(7) + X(8) + X(9) + X(10) + X(11) + ... 
    X(12) + X(13) + X(14) + X(15) + X(16) + X(17) + X(21);

Pp1 = X(1) * X(18) / Ftot; % atm
Pp2 = X(2) * X(18) / Ftot; % atm
Pp3 = X(3) * X(18) / Ftot; % atm
Pp4 = X(4) * X(18) / Ftot; % atm
Pp5 = X(5) * X(18) / Ftot; % atm
Pp6 = X(6) * X(18) / Ftot; % atm
Pp7 = X(7) * X(18) / Ftot; % atm
Pp8 = X(8) * X(18) / Ftot; % atm
Pn3 = X(9) * X(18) / Ftot; % atm
Pn4 = X(10) * X(18) / Ftot; % atm
Pn5 = X(11) * X(18) / Ftot; % atm
Pn6 = X(12) * X(18) / Ftot; % atm
Pn7 = X(13) * X(18) / Ftot; % atm
Pn8 = X(14) * X(18) / Ftot; % atm
Pa6 = X(15) * X(18) / Ftot; % atm
Pa7 = X(16) * X(18) / Ftot; % atm
Pa8 = X(17) * X(18) / Ftot; % atm


r1 = k1 * Pp8; % mol/s
r2 = k2 * Pp8; % mol/s
r3 = k3 * Pp8; % mol/s
r4 = k4 * Pp8; % mol/s
r5 = k5 * (Pp7 - Pp6 * Pp1 / Ke5); % mol/s
r6 = k6 * (Pp7 - Pp5 * Pp2 / Ke6); % mol/s
r7 = k7 * (Pp7 - Pp4 * Pp3 / Ke7); % mol/s
r8 = k8 * (Pp6 - Pp5 * Pp1 / Ke8); % mol/s
r9 = k9 * (Pp6 - Pp4 * Pp2 / Ke9); % mol/s
r10 = k10 * (Pp6 - Pp3 ^ 2 / Ke10); % mol/s
r11 = k11 * (Pp5 - Pp4 * Pp1 / Ke11); % mol/s
r12 = k12 * (Pp5 - Pp3 * Pp2 / Ke12); % mol/s
r13 = k13 * (Pp4 - Pp3 * Pp1 / Ke13); % mol/s
r14 = k14 * (Pp4 - Pp2 ^ 2 / Ke14); % mol/s
r15 = k15 * (Pp3 - Pp2 * Pp1 / Ke15); % mol/s
r16 = k16 * Pp3; % mol/s
r17 = k17 * Pp4; % mol/s
r18 = k18 * Pp5; % mol/s
r19 = k19 * Pp6; % mol/s
r20 = k20 * Pp7; % mol/s
r21 = k21 * Pp8; % mol/s
r22 = k22 * Pn6 ^ 1.4; % mol/s
r23 = k23 * Pn7 ^ 1.4; % mol/s
r24 = k24 * Pn8 ^ 1.4; % mol/s

Cpp1 = (340 + 0.0012 * X(19) + 1.2 * 10^(-5) * X(19)^2) / 1000; % KJ/mol/K
Cpp2 = (286 + 0.0024 * X(19) + 1.5 * 10^(-5) * X(19)^2) / 1000; % KJ/mol/K
Cpp3 = (268 + 0.0036 * X(19) + 2.0 * 10^(-5) * X(19)^2) / 1000; % KJ/mol/K
Cpp4 = (259 + 0.0048 * X(19) + 2.7 * 10^(-5) * X(19)^2) / 1000; % KJ/mol/K
Cpp5 = (253.6 + 0.0060 * X(19) + 3.6 * 10^(-5) * X(19)^2) / 1000; % KJ/mol/K
Cpp6 = (250 + 0.0072 * X(19) + 4.7 * 10^(-5) * X(19)^2) / 1000; % KJ/mol/K
Cpp7 = (247.429 + 0.0084 * X(19) + 6.0 * 10^(-5) * X(19)^2) / 1000; % KJ/mol/K
Cpp8 = (245.5 + 0.0096 * X(19) + 7.5 * 10^(-5) * X(19)^2) / 1000; % KJ/mol/K
Cpn3 = (251.667 + 0.0045 * X(19)) / 1000; % KJ/mol/K
Cpn4 = (243.500 + 0.0060 * X(19)) / 1000; % KJ/mol/K
Cpn5 = (238.600 + 0.0075 * X(19)) / 1000; % KJ/mol/K
Cpn6 = (235.333 + 0.0090 * X(19)) / 1000; % KJ/mol/K
Cpn7 = (233.000 + 0.0105 * X(19)) / 1000; % KJ/mol/K
Cpn8 = (231.250 + 0.0120 * X(19)) / 1000; % KJ/mol/K
Cpa6 = (211.667 + 0.0066 * X(19)) / 1000; % KJ/mol/K
Cpa7 = (210.429 + 0.0077 * X(19)) / 1000; % KJ/mol/K
Cpa8 = (209.500 + 0.0088 * X(19)) / 1000; % KJ/mol/K
Cph2 = (33 + -0.01136 * X(19) + 1.143 * 10^(-6) * X(19)^2 + -2.77 * 10^(-9) * X(19)^3) / 1000; % KJ/mol/K
Cpoil = (550 + 0.0022 * X(19) + 1.220 * 10^(-5) * X(19)^2 + -4.10 * 10^(-9) * X(19)^3) / 98; % KJ/kg/K

deltaH1 = -810; % KJ/mol
deltaH2 = -122; % KJ/mol
deltaH3 = -123; % KJ/mol
deltaH4 = -124; % KJ/mol
deltaH5 = -125; % KJ/mol
deltaH6 = -126; % KJ/mol
deltaH7 = -127; % KJ/mol
deltaH8 = -128; % KJ/mol
deltaH9 = -129; % KJ/mol
deltaH10 = -130; % KJ/mol
deltaH11 = -131; % KJ/mol
deltaH12 = -132; % KJ/mol
deltaH13 = -133; % KJ/mol
deltaH14 = -134; % KJ/mol
deltaH15 = -135; % KJ/mol
deltaH16 = -13.12; % KJ/mol
deltaH17 = -13.24; % KJ/mol
deltaH18 = -13.36; % KJ/mol
deltaH19 = -13.48; % KJ/mol
deltaH20 = -13.60; % KJ/mol
deltaH21 = -13.72; % KJ/mol
deltaH22 = -13.03; % KJ/mol
deltaH23 = -13.06; % KJ/mol
deltaH24 = -13.09; % KJ/mol

SumFCp = X(1) * Cpp1 + X(2) * Cpp2 + X(3) * Cpp3 + X(4) * Cpp4 + X(5) * Cpp5 + ...
    X(6) * Cpp6 + X(7) * Cpp7 + X(8) * Cpp8 + X(9) * Cpn3 + X(10) * Cpn4 + X(11) * Cpn5 + ...
    X(12) * Cpn6 + X(13) * Cpn7 + X(14) * Cpn8 + X(15) * Cpa6 + X(16) * Cpa7 + X(17) * Cpa8 + ...
    X(21) * Cph2; % Sum Fj * Cpj, 
SumrH = (-r1) * deltaH1 + (-r2) * deltaH2 + (-r3) * deltaH3 + (-r4) * deltaH4 + (-r5) * deltaH5 + ...
    (-r6) * deltaH6 + (-r7) * deltaH7 + (-r8) * deltaH8 + (-r9) * deltaH9 + (-r10) * deltaH10 + ...
    (-r11) * deltaH11 + (-r12) * deltaH12 + (-r13) * deltaH13 + (-r14) * deltaH14 + (-r15) * deltaH15 + ...
    (-r16) * deltaH16 + (-r17) * deltaH17 + (-r18) * deltaH18 + (-r19) * deltaH19 + (-r20) * deltaH20 + ...
    (-r21) * deltaH21 + (-r22) * deltaH22 + (-r23) * deltaH23 + (-r24) * deltaH24; % sum (-ri)*deltaHi


% Mass balance equation

X(1,1) = Ac * (r1 + r5 + r8 + r11 + r13 + r15); % dFp1 /dz
X(2,1) = Ac * (r2 + r6 + r9 + r12 + 2 * r14 + r15); % dFp2 /dz
X(3,1) = Ac * (r3 + r7 + 2 * r10 + r12 + r13 - r15 - r16); % dFp3 /dz
X(4,1) = Ac * (2 * r4 + r7 + r9 + r11 - r13 - r14 - r17); % dFp4 /dz
X(5,1) = Ac * (r3 + r6 + r8 - r11 - r12 - r18); % dFp5 /dz
X(6,1) = Ac * (r2 + r5 - r8 - r9 - r10 - r19); % dFp6 /dz
X(7,1) = Ac * (r1 - r5 - r6 - r7 - r20); % dFp7 / dz
X(8,1) = Ac * (-r1 - r2 - r3 - r4 - r21); % dFp8/dz
X(9,1) = Ac * (r16); % dFn3 /dz
X(10,1) = Ac * (r17); % dFn4 /dz
X(11,1) = Ac * (r18); % dFn5 /dz
X(12,1) = Ac * (r19 - r22); % dFn6 /dz
X(13,1) = Ac * (r20 - r23); % dFn7 /dz
X(14,1) = Ac * (r21 - r24); % dFn8 /dz
X(15,1) = Ac * (r22); % dFa6 /dz
X(16,1) = Ac * (r23); % dFa7 /dz
X(17,1) = Ac * (r24); % dFa8 /dz
X(21,1) = Ac * (-r1 - r2 - r3 - r4 - r5 - r6 - r7 - r8 - r9 - r10 - r11 - r12 - r13 - r14 - r15 + ...
    r16 + r17 + r18 + r19 + r20 + r21 + 3 * r22 + 3 * r23 + 3 * r24); %dH2/dz


% Energy balance equation
T1 = X(19);

X(19,1) = (-Ua * (X(19) - X(20)) + SumrH) * Ac / SumFCp; % dT/dz

% For co-current heat exchange
X(20,1) = (Ua * (T1 - X(20)) / moil / Cpoil) * Ac; % dTa/dz

% Calculate Pressure
Ftot = X(1) + X(2) + X(3) + X(4) + X(5) + X(6) + X(7) + X(8) + X(9) + X(10) + X(11) + ... 
    X(12) + X(13) + X(14) + X(15) + X(16) + X(17) + X(21);
X(18,1) = -betao * Po * X(19) * Ftot / (X(18) * To * FTo);


 

%X(1) : Fp1 
%X(2) : Fp2
%X(3) : Fp3
%X(4) : Fp4
%X(5) : Fp5
%X(6) : Fp5
%X(7) : Fp5
%X(8) : Fp5
%X(9) : Fn3
%X(10) : Fn4
%X(11) : Fn5
%X(12) : Fn6
%X(13) : Fn7
%X(14) : Fn8
%X(15) : Fa6
%X(16) : Fa7
%X(17) : Fa8
%X(18) : P, pressure
%X(19) : Temp of gas, T
%X(20) : Temp of oil, Ta
%X(21) : FH2



%[Z,X]=ode45(@Project,[0,1.504],[1 1 1 1 1 1 1 40 0 0 0 0 0 0 0 0 0 2 673.15 423.15 1]);
%plot(Z,X(:,1),'-');
%plot(Z,X(:,2),'-');
%plot(Z,X(:,1),'-',Z,X(:,2),'-');
%plot(Z,X(:,1),'-',Z,X(:,2),'-',Z,X(:,3),'-',Z,X(:,4),'-',Z,X(:,5),'-',Z,X(:,6),'-',Z,X(:,7),'-',Z,X(:,8),'-');


end