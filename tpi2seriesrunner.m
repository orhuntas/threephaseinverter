clear
freffreq = 2*pi*50
sreffreq = 2*pi*50

Ef=154.55/2

fswfreq = 20000
sswfreq= 20000

fma=0.9
sma=0.9

Rin=1
dcin=547.66

fdclinkres=1e-6
fdclinkcap=100e-6
sdclinkres=1e-6
sdclinkcap=100e-6

Load_Real_Power = 4250;
Load_Power_Factor = 0.9; 
Load_Apparent_Power = Load_Real_Power/Load_Power_Factor; %VA
Load_Reactive_Power = Load_Apparent_Power*sin(acos(Load_Power_Factor));

n = 2; %number of series modules
SVll_rms = sma*dcin*0.612/n;
SIline = Load_Apparent_Power/(SVll_rms*sqrt(3));
SZload = SVll_rms/(SIline*sqrt(3));  %ohm total
SRload = n*SZload*Load_Power_Factor;  %ohm total
SXload = n*SZload*sin(acos(Load_Power_Factor)); %ohm total
SLload = SXload/sreffreq;

FVll_rms = fma*dcin*0.612/n;
FIline = Load_Apparent_Power/(FVll_rms*sqrt(3));
FZload = FVll_rms/(FIline*sqrt(3));  %ohm total
FRload = n*FZload*Load_Power_Factor;  %ohm total
FXload = n*FZload*sin(acos(Load_Power_Factor)); %ohm total
FLload = FXload/freffreq;