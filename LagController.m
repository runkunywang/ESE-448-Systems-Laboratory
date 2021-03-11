%Lag controller
sys = tf(1.636, [0.0293 1 0]);
os = 5;
tp = 0.2;
zeta = sqrt((log(5/100)^2)/(pi^2+(log(5/100)^2)));
wn = pi/(tp*sqrt(1-zeta^2));
SigD = -zeta*wn;
WD = wn*sqrt(1-zeta^2);
P = pole(sys);
p1 = P(1);
p2 = P(2);
%compensator zero put at -30
angle1 = rad2deg(angle((SigD+p1)+WD*j));
angle2 = rad2deg(angle((SigD-p2)+WD*j));
CompZero = -30;
ZeroAngle = rad2deg(angle((SigD-CompZero)+WD*j));
PoleAngle = ZeroAngle - angle1 - angle2 + 180;
CompPole = SigD - WD/(tand(PoleAngle));
LagCont = tf([1 -CompZero], [1 -CompPole])
NewSys = LagCont*sys;

rlocus(NewSys);
sgrid(zeta,0);
ylim([-30 30])
[K,p] = rlocfind(NewSys)

sys1 = K*NewSys;
csys = feedback(sys1,1);
step(csys);

%K = 8.6233