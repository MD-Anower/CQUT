clear;
clc;

%%%%%%%%%%%%%%%%%%% box pllots 


r=normrnd(3,1,100,1);
data1=normrnd(3,2,100,1);
data2=normrnd(2,1,100,1);
data3=normrnd(6,2,100,1);
data4=normrnd(8,0.5,100,1);
data5=normrnd(4,4,100,1);
data6=normrnd(5,1,100,1);
data=[data1 data2 data3 data4 data5 data6];
boxplot(data);

figure
boxplot(data,'Labels',{'mu = 3','mu = 2','mu = 6','mu = 8','mu = 4','mu = 5'});

vect1=normrnd(4,2,100,1);
vect2=normrnd(7,0.5,100,1);
figure
boxplot([vect1,vect2],'Notch','on','Labels',{'mu= 4','mu = 7'});
title('Comparison between two distributions');

%%%%%%%%%%%%%%%%%%%%%%%%%%%% scatter plot

Height = [168 168 168 173 163 174 174 174 175 175 176 165 180 180 182];
Weight = [65 65 65 78 70 68 68 80 70 75 77 69 80 65 79];
scatter(Weight,Height);
IdealWeight=Height-100-[(Height-150)/4];
hold on
plot(IdealWeight,Height);


%%%%%%%%%%%%%%%%%%%%%%%
figure;
RandomMatrix = randn(100,4);
plotmatrix(RandomMatrix);






