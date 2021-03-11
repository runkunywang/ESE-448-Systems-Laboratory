K = 1.636;
tau = 0.0293;

os = 5;
tp = 0.2;
zeta = sqrt((log(5/100)^2)/(pi^2+(log(5/100)^2)));
wn = pi/(tp*sqrt(1-zeta^2));
%zeta = 0.69;
%wn = 21.7;

kp = (wn^2*tau)/K
kv = ((2*zeta*wn*tau)-1)/K

% kp =
%    8.4372
% As Kp increases, the overshoot is higher but the peak time is lower for
% step response
% As Kp decreases, the overshoot decreases but Tp increases for step
% response
% kv =
%   -0.0747
% As Kv decreases (becomes more negative) The overshoot increases and Tp
% decreases for a step response
% As Kv increases (becomes less negative) The overshoot decreases and Tp
% increases for a step response