clear;
clc;

%%%%%%%%%%%%%  Polynomial regression  %%%%%%%%%%%%%%%%%%

Time = [6 8 11 14 16 18 19];
Temp = [4 7 10 12 11.5 9 7];
plot(Time,Temp,'o');
title('Plot of Temperature Versus Time');
coeff = polyfit(Time,Temp,2);
TimeNew = 6:0.1:19;
TempNew = polyval(coeff,TimeNew);
figure
plot(Time,Temp,'o', TimeNew, TempNew)
title('Plot of Data (Points) and Model (Line)')

