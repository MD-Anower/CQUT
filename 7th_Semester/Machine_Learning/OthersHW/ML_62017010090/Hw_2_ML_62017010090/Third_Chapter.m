clear;
clc;

% A first data 
SampleData = readtable('CleaningData.xlsx');
summary(SampleData);
SampleData;


% missing values
id = {'Japan' '83' '4'};
WrongPos = ismissing(SampleData,id);
SampleData(any(WrongPos,2),:);

% Changing the datatype 

SampleData.games = num2str(SampleData.games);
summary(SampleData(:,3));
SampleData = standardizeMissing(SampleData,-1);
summary(SampleData(:,3));
SampleDataOrdered = sortrows(SampleData,{'ranking'},{'descend'});
disp(SampleDataOrdered);
SampleData1 = SampleData(1:6,:);
SampleData1;
SampleData2 = SampleData(7:end,:);
SampleData2;
SampleDataComplete = [SampleData1;SampleData2];
SampleDataComplete;

LifeExpectancy = readtable('LifeExpectancy.xlsx');
LifeExpectancy;

SampleDataLE = join(SampleDataComplete,LifeExpectancy, 'Keys','gender');
SampleDataLE;
GlassIdentificationDataSet = readtable('GlassIdentificationDataSet.xlsx');
disp(GlassIdentificationDataSet);
Max = max(GlassIdentificationDataSet{:,3:4});

disp(Max);

Mean = mean(GlassIdentificationDataSet{:,3:4});

disp(Mean);

Min = min(GlassIdentificationDataSet{:,3:4});

disp(Min);

[Max,IndRowMax] = max(GlassIdentificationDataSet{:,3:4});
disp(Max);

[Min,IndRowMin] = min(GlassIdentificationDataSet{:,3:4});
disp(Min);

Median = median(GlassIdentificationDataSet{:,3:4});
disp(Median);

Mode = mode(GlassIdentificationDataSet{:,3:4});
disp(Mode);

% Quantiles and percentiles 

Quantile = quantile(GlassIdentificationDataSet{:,3:4}, [0.25 0.50 0.75]);

disp(Quantile);

Percentiles = prctile(GlassIdentificationDataSet{:,3:4}, [25 50 75]);

disp(Percentiles);

% Measures of dispersion 

Range = range(GlassIdentificationDataSet{:,3:4});

disp(Range);

Iqr = iqr(GlassIdentificationDataSet{:,3:4});

disp(Iqr);


CheckIqr = Quantile(3,:) - Quantile(1,:);

disp(CheckIqr);

Variance = var(GlassIdentificationDataSet{:,3:4});

disp(Variance);

StDev = std(GlassIdentificationDataSet{:,3:4});

disp(StDev);

Mad = mad(GlassIdentificationDataSet{:,3:4});
disp('Mad');
disp(Mad);

a = [1 2 3 4];
disp(a);
b = 10*a;
disp(b);

c = fliplr(a);
disp(c);
d = randperm(4,4);
disp(d);

MatA = [a' b' c' d'];
disp('Meta');
disp(MatA);

CovMatA = cov(MatA);
disp('CovMatA');
disp(CovMatA);


MatB = rand(3);
disp('MatB');
disp(MatB);
Cor = corrcoef(MatB);
disp('Cor');
disp(Cor);

CorrMatA = corrcoef(MatA);
disp(CorrMatA);


% Measures of shape 
a = [-5:.1:5];
Norm = normpdf(a,0,1);
figure;
plot(a,Norm);


GlassIdentificationDataSet = readtable('GlassIdentificationDataSet.xlsx');
SkN = skewness(GlassIdentificationDataSet{:,3:4});
disp(SkN);


% Kurtosis 

Kurt = kurtosis(GlassIdentificationDataSet{:,3:4});
disp('Kurt');
disp(Kurt);

%   The Data Statistics dialog box


EmergencyCalls = xlsread('GlassIdentificationDataSet.xlsx');
[rows,cols] = size(EmergencyCalls);
x = 1:rows;
figure;
plot(x,EmergencyCalls);
legend('Street 1','Street 2','Street 3','Street 4');
xlabel('Time');
ylabel('Emergency Calls');

% Histogram


Vect1=[10,25,12,13,33,25,44,50,43,26,38,32,31,28,30];

hist(Vect1);

Vect2=[10,25,12,13,33,25,44,50,43,26,38,32,31,28,30,15,16,22,35,18];

h = hist(Vect2,12);
xlabel('Results')
ylabel('Frequency')
title('Customer Satisfaction Survey')
h.FaceColor = [0 0.5 0.5];


Vect3=[10,25,12,13,33,25,44,50,43,26,38,32,31,28,30,15,16,22,35,18];
nbin=10:10:50;

h = hist(Vect3,nbin);
xlabel('Results');
ylabel('Frequency');
title('Customer Satisfaction Survey');
h.FaceColor = [0 0.5 0.5];

Vect5 = normrnd(50,3,1000,1);
Hist = histfit(Vect5);
disp(Hist);

% box pllots 

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

% scatter plot

Height = [168 168 168 173 163 174 174 174 175 175 176 165 180 180 182];
Weight = [65 65 65 78 70 68 68 80 70 75 77 69 80 65 79];
scatter(Weight,Height);
IdealWeight=Height-100-[(Height-150)/4];
hold on
plot(IdealWeight,Height);

figure;
RandomMatrix = randn(100,4);
plotmatrix(RandomMatrix);







