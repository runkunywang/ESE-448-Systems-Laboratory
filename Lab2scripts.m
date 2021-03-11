%Lag Controller
[~,x] = max(LagController(:,3));
osLag = LagController(x,3)
TpLag = 1.4860 - 1.2500
EssLag = 1.0110 - 1

%LagPI Controller
[~,x] = max(LagPIData(:,3));
osLagPI = LagPIData(x,3)
TpLagPI = 15.2520 - 15
EssLagPI = 1.0215 - 1

%PV Controller
[~,x] = max(PVdata(:,3));
osLagPV = PVdata(x,3)
TpLagPV = 6.48 - 6.25
EssLagPV = 1.008 - 1

%PIV Controller
[~,x] = max(PIVData(:,3));
osLagPIV = PIVData(x,3)
TpLagPIV = 5.244 - 5
EssLagPIV = 1.02 - 1