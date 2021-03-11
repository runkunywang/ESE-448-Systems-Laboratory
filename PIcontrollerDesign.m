sys = tf([1.5],[0.025 0]);
step(feedback(sys, 1));

sys = tf(1.636, [0.0293 1 0]);
os = 5;
tp = 0.05;
zeta = sqrt((log(5/100)^2)/(pi^2+(log(5/100)^2)));
wn = pi/(tp*sqrt(1-zeta^2));
tau = 0.025;
K = 1.636;

kp = (-1+2*zeta*wn*tau)/K
ki = (wn^2*tau)/K

%kp = 1.2199
%ki = 115.1835

%Bsp decreases os decreases but tp increases
%Bsp increases os increases but tp decreases

%As Kp increases, os decreases tp doesnt change much
%As Kp decreases, os and tp both increase

%As Ki increases, os increases tp decreases
%As Ki decreases, os decreases tp increases

