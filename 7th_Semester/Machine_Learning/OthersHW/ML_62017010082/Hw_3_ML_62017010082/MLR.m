%MLR with Categorical Predictor
EmployeesSalary = readtable('employees.xlsx');
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
