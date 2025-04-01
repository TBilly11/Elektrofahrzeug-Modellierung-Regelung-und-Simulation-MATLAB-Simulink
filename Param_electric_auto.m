%--------------------------------------------------------------------------
% Tesla X model parameters
% Group Members:    Gilles Cheutcheu Tounounga, 575605
%                

% Date:  25.09.2024
% place: university of Applied sciences and economy Berlin 
% Gilles Cheutcheu Tounounga      575605
% Leonel Noutat Tchengua          595330
% Billy  Takoumbo Nolekouo        572869

% -------------------------------------------------------------------------
%% Systemparameter
clear all;
clc;
% Aerodynamically evective surface in m^2
A_aero  =    2.72;            
% air density in Kg/m^3
rho_air =    1.225;        
% effective value of the wheel in m, 20 Inch
Reff    =    0.4;        
% Slope of the path (angle)
beta1   =    0*pi/180;
% coefficient of friction (whell on road)
cR      =    0.23;         
% 0.3 - 0.6 coefficient of aerodynamin resistance
cW      =    0.311;  
% Gravity
g       =    9.81;
% Car weight 2391 - 2509 Kg
m0      =    2440;
% Passenger weight (estimated) in kg 
delta_m =    535;         
% total weight from the car and passengers
m       =    m0 + delta_m;       
% Drive torque at the wheel
T_W     =    300;         
% Braking force
F_B     =    0;
%% Cruise Control Parameter
VA_ref  = 100;
t       =   10;
Tau     =    t/4;
i_g     =    100;
gamma   =    VA_ref/3.6;
a_F     =    0.5*cW*A_aero*rho_air*gamma/m;
b_F     =    i_g/(m*Reff);
a_w     =    1/Tau;
K_P     =    a_w/b_F;
K_I     =    a_F*a_w/b_F;

%% Motor Parameter PMSM
% real (d) and imaginary (q) shares
% number of pole pairs 
Z_p = 4;
% stator resistance
R_s = 0.18;
% d-axis inductance
L_d = 0.0085;
% q-axis inductance
L_q = L_d;
% Peak torque
% T_e = ;
% stator mechanical speed
w_S = 30;
%
Psi_PM = 0.0715;
%% Drive Controler's parameters
Tau_d = 0.25/4;
Tau_q = 0.25/4;

% id-Regler PI1
a_w_d = 1/Tau_d;
K_I_d = a_w_d*L_d;
K_P_d = R_s*a_w_d;

%iq-Regler PI2
a_w_q = 1/Tau_q;
K_I_q = a_w_q*L_q;
K_P_q = R_s*a_w_q;
%% Adaptive Cruise Control's Parameters
deltaX_ref=VA_ref/2;
XB_0 = 500;
DeltaX_AB=5;
x_ref = 0.6;
V_B = 60; 
k_dc = 1;
w_0 = 2;
D = 0.8;
Tau_acc = 1.007;
aw_acc = 1/Tau_acc;

 