clear;
clc;

%Least-squares regression
VehicleData = readtable('data/VehiclesItaly.xlsx');
summary(VehicleData)
y=VehicleData.Registrations;
x=VehicleData.Population;
alpha=x\y;
VehicleRegFit=alpha*x;
scatter(x,y)
hold on
plot(x,VehicleRegFit)

Residual=y-VehicleRegFit;
stem(Residual);
Rsq1 = 1 - sum((y - VehicleRegFit).^2)/sum((y - mean(y)).^2);
print('result of Rsq1');



% Comparison of the two models
X = [ones(length(x),1) x];
alpha_beta = X\y;
VehicleRegFit2 = X* alpha_beta;
scatter(x,y)
hold on
plot(x,VehicleRegFit)
plot(x,VehicleRegFit2,'--b');
Rsq2 = 1 - sum((y - VehicleRegFit2).^2)/sum((y - mean(y)).^2);

%%%%%%%%%%%%%%%%%%    The Basic Fitting interface   %%%%%%%%%%%%%%%%%%%%

VehicleData = readtable('data\VehiclesItaly.xlsx');
scatter(VehicleData.Population,VehicleData.Registrations);







