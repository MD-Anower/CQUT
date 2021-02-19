%Least-squares regression
VehicleData = readtable('VehiclesItaly.xlsx');
summary(VehicleData)
y=VehicleData.Registrations;
x=VehicleData.Population;
alpha=x\y;
VehicleRegFit=alpha*x;
scatter(x,y)
hold on
plot(x,VehicleRegFit)
Residual=y-VehicleRegFit;
stem(Residual)
Rsq1 = 1 - sum((y - VehicleRegFit).^2)/sum((y - mean(y)).^2);
X = [ones(length(x),1) x];
alpha_beta = X\y;
VehicleRegFit2 = X* alpha_beta;
scatter(x,y)
hold on
plot(x,VehicleRegFit)
plot(x,VehicleRegFit2,'--b')
Rsq2 = 1 - sum((y - VehicleRegFit2).^2)/sum((y - mean(y)).^2);

%Basic Fitting interface
VehicleData = readtable('VehiclesItaly.xlsx');
scatter(VehicleData.Population,VehicleData.Registrations)


%Multiple Linear Regression
load hald
whos
X = [ones(13,1), ingredients];
Y=(heat);
A=X\Y;
lm=fitlm(ingredients,Y);
b=regress(Y,X);








