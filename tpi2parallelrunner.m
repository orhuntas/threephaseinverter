clear
freffreq = 2*pi*50
sreffreq = 2*pi*50

fswfreq = 20000
sswfreq= 20000

fma=0.9
sma=0.9

Rin=1
dcin=547.66

fdclinkres=1e-6
fdclinkcap=100e-6

Load_Real_Power = 4250;
Load_Power_Factor = 0.9; 
Load_Apparent_Power = Load_Real_Power/Load_Power_Factor; %VA
Load_Reactive_Power = Load_Apparent_Power*sin(acos(Load_Power_Factor));

n = 2; %number of series modules
SVll_rms = 370;
SIline = Load_Apparent_Power/(sqrt(3)*SVll_rms);
SZload = (SVll_rms)/(SIline*sqrt(3));
SRload = SZload*Load_Power_Factor ;  %ohm total
SXload = sqrt((SZload)^2-(SRload)^2); %ohm total
SLload = SXload/sreffreq;

FVll_rms = 370 ;
FIline = Load_Apparent_Power/(sqrt(3)*FVll_rms);
FZload = (FVll_rms)/(FIline*sqrt(3)); 
FRload = FZload*Load_Power_Factor;  %ohm total
FXload = sqrt((FZload)^2-(FRload)^2); %ohm total
FLload = FXload/freffreq;