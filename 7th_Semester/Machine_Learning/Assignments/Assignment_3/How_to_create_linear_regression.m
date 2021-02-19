clear;
clc;

%%%%%%%%%%%%%%%   How to create a linear regression model %%%%%%%%%%%%%%%
%linear regression model
VehicleData = readtable('data\VehiclesItaly.xlsx');
VehicleData(1:10,:)
lrm = fitlm(VehicleData,'Registrations~Population');
plotResiduals(lrm);
plotResiduals(lrm,'probability');
outliers = find(lrm.Residuals.Raw < -1.5*10^5);
lrm2 = fitlm(VehicleData,'Registrations~Population','Exclude',outliers);
plotResiduals(lrm2,'probability');
lrm1 = fitlm(VehicleData,'Registrations~Population');
lrm2 = fitlm(VehicleData,'Registrations~Population','RobustOpts','on');
subplot(1,2,1)
plotResiduals(lrm1,'probability')
subplot(1,2,2)
plotResiduals(lrm2,'probability')
outliers = find((lrm2.Residuals.Raw < -1.5*10^5) | (lrm2.Residuals.Raw > 1.5*10^5));
lrm3 = fitlm(VehicleData,'Registrations~Population','RobustOpts','on','Exclude',outliers);
subplot(1,2,1)
plotResiduals(lrm2,'probability')
subplot(1,2,2)
plotResiduals(lrm3,'probability')

%Multiple Linear Regression
load hald
whos
X = [ones(13,1), ingredients];
Y=(heat);
A=X\Y;
lm=fitlm(ingredients,Y);
b=regress(Y,X);

%MLR with Categorical Predictor 
EmployeesSalary = readtable('data\employees.xlsx');
summary(EmployeesSalary)
EmployeesSalary.LevelOfEmployee=categorical(EmployeesSalary.LevelOfEmployee);
class(EmployeesSalary.LevelOfEmployee)
figure()
gscatter(EmployeesSalary.YearsExperience, EmployeesSalary. Salary, EmployeesSalary.LevelOfEmployee,'bgr','x.o')
title('Salary of  Employees versus Years of the Experience, Grouped by Level of Employee')
LMcat = fitlm(EmployeesSalary,'Salary~YearsExperience*LevelOfEmployee');
Xvalues = linspace(min(EmployeesSalary.YearsExperience),max(EmployeesSalary.YearsExperience));
figure()
gscatter(EmployeesSalary.YearsExperience, EmployeesSalary.Salary, EmployeesSalary.LevelOfEmployee,'bgr','x.o')
title('Salary of  Employees versus Years of the Experience, Grouped by Level of Employee')
line(Xvalues,feval(LMcat,Xvalues,'GeneralStaff'),'Color','b','LineWidth',2)
line(Xvalues,feval(LMcat,Xvalues,'TechnicalStaff'),'Color','r','LineWidth',2)
line(Xvalues,feval(LMcat,Xvalues,'Management'),'Color','g','LineWidth',2)

