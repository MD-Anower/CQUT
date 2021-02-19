
clear;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Measures of shape %%%%%%%%%%%%%%%55
a = [-5:.1:5];
Norm = normpdf(a,0,1);
figure;
plot(a,Norm);


GlassIdentificationDataSet = readtable('C:\84_assignment_2\data\GlassIdentificationDataSet.xlsx');
SkN = skewness(GlassIdentificationDataSet{:,3:4});
disp(SkN);


%%%%%%%%%%%%%%%%%%%%%%5 Kurtosis %%%%%%%%%%%%%%%%

Kurt = kurtosis(GlassIdentificationDataSet{:,3:4});
disp('Kurt');
disp(Kurt);

%%%%%%%%%%%%%%%%%%%%%%%%%%   The Data Statistics dialog box


EmergencyCalls = xlsread('C:\84_assignment_2\data\GlassIdentificationDataSet.xlsx');
[rows,cols] = size(EmergencyCalls);
x = 1:rows;
figure;
plot(x,EmergencyCalls);
legend('Street 1','Street 2','Street 3','Street 4');
xlabel('Time');
ylabel('Emergency Calls');


