clear;
clc;

%%%%%%%%%%%%%%%%%%%% table %%%%%%%%%%%%%%%%%%%%%

load hospital;
whos;

LastName=hospital.LastName;
Sex=hospital.Sex;
Age=hospital.Age;
Weight=hospital.Weight;

TablePatients = table(LastName,Sex,Age,Weight);
disp(TablePatients(1:5,:));


BlPrMax=hospital.BloodPressure(:,1);
BlPrMin=hospital.BloodPressure(:,2);
% Now add the two new variables to the table:
TablePatients.BlPrMax=BlPrMax;
TablePatients.BlPrMin=BlPrMin;
% To confirm the correctness of the operations, we print the first five rows of the table and only three columns:
disp(TablePatients(1:5,[1 5:6]));

disp('the summery of table');
summary(TablePatients)

