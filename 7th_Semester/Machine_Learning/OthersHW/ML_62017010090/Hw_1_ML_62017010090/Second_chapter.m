clear;
clc;

vector = [10 20 30 40 50 60 70 80 90 100];
vector

matrix = [10 20 30; 40 50 60 ;70 80 90];
matrix

met = matrix (1,2);
met

code4 = matrix(1:3,3);
code4

code_5 = matrix(:,3);
code_5

vector_even = 0:2:20;
vector_even


who_yor_Variable = who;

disp(who_yor_Variable);


MyMatrix = rand(5)
dlmwrite('MyMatrix.txt', MyMatrix) 
type('MyMatrix.txt')
MyMatrix = rand(5)
xlswrite('MyMatrix.xls', MyMatrix)
MyMatrix = rand(5);
csvwrite('MyMatrix.csv', MyMatrix) 
Coliseum = imread('coliseum.jpg');
imwrite(Coliseum,'coliseum2.jpg');
[apollo13,Fs] = audioread('apollo13.wav');
sound(apollo13,Fs)
Apollo13Obj = audioplayer(apollo13,Fs);
play(Apollo13Obj);
audiowrite('apollo13.wav',apollo13,Fs)
InfoAudio = audioinfo('apollo13.wav');

MyFamily = {'Luigi', 'Simone', 'Tiziana'; 13, 11, 43};
MyFamily2= MyFamily(1:2,1:2);
LastCell= MyFamily{2,3};
class(LastCell)
MyFamily2{2,2}=110;
MyFamily{1:2,1:3};
[r1c1, r2c1, r1c2, r2c2, r1c3, r2c3]= MyFamily{1:2,1:3};
class(r1c1)
class(r2c1)
Age = [MyFamily{2,:}];
MyFamily=[MyFamily;{'M','M','F'}];
%Structure Array
field1 = 'Name';
value1 = {'Luigi','Simone','Tiziana'};
field2 = 'Amount';
value2 = {150000,250000,50000};
field3 = 'Data';
value3 = {[25, 65, 43; 150, 168, 127.5; 280, 110, 170],[5, 5, 23; 120, 118, 107.5; 200, 100, 140],[15, 45, 23; 160, 158, 12; 230, 140, 160]};
customers = struct(field1,value1,field2,value2,field3,value3);
customers(1).Name
customers(1).Amount
customers(1).Data
class(customers)
customers(4).Name='Giuseppe';
customers(4)
bar(customers(1).Data)
title(['Data of first customer: ', customers(1).Name])
customers(1:2).Data
customers(1).Data(1:2,1:2)
%Table

load hospital
whos
LastName=hospital.LastName;
Sex=hospital.Sex;
Age=hospital.Age;
Weight=hospital.Weight;
TablePatients = table(LastName,Sex,Age,Weight);
TablePatients(1:5,:)
BlPrMax=hospital.BloodPressure(:,1);
BlPrMin=hospital.BloodPressure(:,2);
TablePatients.BlPrMax=BlPrMax;
TablePatients.BlPrMin=BlPrMin; 
TablePatients(1:5,[1 5:6])
summary(TablePatients)

%Categorical Array      
SexC=categorical(Sex);
categories(SexC)
AgeC=categorical(Age);
categories(AgeC)
NameBin = {'FirstBin', 'SecondBin', 'ThirdBin'};
%AgeBin = discretize(Age,[25 33 41 50],'categorical',NameBin);
%summary(AgeBin)



