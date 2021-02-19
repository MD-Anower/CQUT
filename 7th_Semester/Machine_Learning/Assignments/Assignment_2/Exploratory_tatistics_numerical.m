clear;
clc;

%%%%%%%%%%%%%%%%%%%%%%%% Exploratory statistics - numerical measures

disp('Measures of location');
GlassIdentificationDataSet = readtable('C:\84_assignment_2\data\GlassIdentificationDataSet.xlsx');
disp(GlassIdentificationDataSet);
Max = max(GlassIdentificationDataSet{:,3:4});
disp('Max');
disp(Max);

Mean = mean(GlassIdentificationDataSet{:,3:4});
disp('Mean');
disp(Mean);

Min = min(GlassIdentificationDataSet{:,3:4});
disp('Min');
disp(Min);

[Max,IndRowMax] = max(GlassIdentificationDataSet{:,3:4});
disp(Max);

[Min,IndRowMin] = min(GlassIdentificationDataSet{:,3:4});
disp(Min);

Median = median(GlassIdentificationDataSet{:,3:4});
disp(Median);

Mode = mode(GlassIdentificationDataSet{:,3:4});
disp(Mode);

%%%%%%%%%%%%%%%%%%%%%%%%% Quantiles and percentiles %%%%%%%%%%%%%%%%%

Quantile = quantile(GlassIdentificationDataSet{:,3:4}, [0.25 0.50 0.75]);
disp('Quantile ');
disp(Quantile);

Percentiles = prctile(GlassIdentificationDataSet{:,3:4}, [25 50 75]);
disp('Percentiles');
disp(Percentiles);

%%%%%%%%%%%%%%%%%%%%%%%% Measures of dispersion %%%%%%%%%%%%%%

Range = range(GlassIdentificationDataSet{:,3:4});
disp('Range');
disp(Range);

Iqr = iqr(GlassIdentificationDataSet{:,3:4});
disp('Iqr');
disp(Iqr);


CheckIqr = Quantile(3,:) - Quantile(1,:);
disp('CheckIqr');
disp(CheckIqr);

Variance = var(GlassIdentificationDataSet{:,3:4});
disp('Variance');
disp(Variance);

StDev = std(GlassIdentificationDataSet{:,3:4});
disp('StDev')
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Measures of shape %%%%%%%%%%%%%%%55




