%% Step 1
K = 1.636;
tau = 0.0293;
% Creating the PI Plant
sys1 = tf([K], [tau 1]);
int = tf([1], [1 0]);
PI = series(int,sys1);
figure(1)
bode(PI)
grid

%% Step 2
% Kc from dB to V/rad
Kcdb = 34.8
Kc = 10^(Kcdb/20);

K = 1.636;
tau = 0.0293;
% Creating the PI Plant
sys1 = tf([K], [tau 1]);
int = tf([1], [1 0]);
PI = series(int,sys1);

%Pushing the crossover frequency to 50
Lp = Kc*PI;
figure(1)
bode(Lp);
grid
[Gm1, Pm1, Wcg1, Wcp1] = margin(Lp)

%PhiMax and a
PhiMax = 75 - Pm1 + 5;
PhiMax = PhiMax * pi / 180;
a = (1+sin(PhiMax))/(1-sin(PhiMax));
dBa = 20*log10(a)

Wmax = 83.6;
T = 1/(Wmax*sqrt(a));
p2 = 1/T;
z2 = 1/(a*T);

sys2 = (p2/z2)*tf([1 z2],[1 p2]);

L = series(sys2,Lp);
figure(2)
bode(L);
grid;

%bode(sys2);
%grid;
[Gm, Pm, Wcg, Wcp] = margin(L)

%for the closed loop system
bandwidth(feedback(PI,1))

Lc = feedback(L,1);
figure(3)
step(Lc)
%% Step 3
%PhiMax and a
Pm = 34.1151
PhiMax = 75 - Pm + 5;
PhiMax = PhiMax * pi / 180;
a = (1+sin(PhiMax))/(1-sin(PhiMax));

%Controller amplification at high frequency at high frequency
dBa = 20*log10(a);

%Omega max is the frequency at half of dBa
Wmax = 83.6;

T = 1/(Wmax*sqrt(a));
p2 = 1/T;
z2 = 1/(a*T);
%Controller
sys2 = (p2/z2)*tf([1 z2],[1 p2]);

L = series(sys2,Lp);
figure(3)
bode(L);
grid;

%bode(sys2);
%grid;
[Gm, Pm, Wcg, Wcp] = margin(L)

%for the closed loop system
bandwidth(feedback(PI,1))

Lc = feedback(L,1);
figure(4)
step(Lc)