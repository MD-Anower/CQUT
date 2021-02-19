clear;
clc;

%%%%%%%%%%%%%%%%%% Predicting a response by decision  trees  %%%%%%%%%%

X=rand(100,2);
Y=(X(:,1)<0.3 | X(:,2)>0.6);
SimpleTree=fitctree(X,Y);
SimpleTree;
view(SimpleTree)
view(SimpleTree,'mode','graph');

load fisheriris;
tabulate(species);
gplotmatrix(meas, meas, species);
gscatter(meas(:,3), meas(:,4), species,'rgb','osd');
xlabel('Petal length');
ylabel('Petal width');

ClassTree= fitctree(meas,species);
view(ClassTree)
view(ClassTree,'mode','graph')

MeasNew= [5.9 3.2 1.3 0.25];
predict(ClassTree,MeasNew);
resuberror = resubLoss(ClassTree);
cvrtree = crossval(ClassTree);
cvrtree;
cvloss = kfoldLoss(cvrtree);
cvloss;


%%%%%%%%%%%%%%%%  Probabilistic classification algorithms
%%%%%%%%%%%%%%%%%%%%%%   - Naive Bayes
%%%%%%%%%%%%%%   Bayesian methodologies in MATLAB

load fisheriris
PetalLength = meas(:,3);
PetalWidth = meas(:,4);
% PetalTable = table(PetalLength,PetalWidth);
%%% you can't run this function if you dont have Machine learning tools or
%%% classification learner or updated version of matlab
NaiveModelPetal = fitcnb(PetalTable,species,'ClassNames',{'setosa','versicolor','virginica'});
NaiveModelPetal;
NaiveModelPetal.DistributionParameters;
NaiveModelPetal.DistributionParameters{2,1};
NaiveModelPetal.DistributionParameters{1,2};
NaiveModelPetalResubErr = resubLoss(NaiveModelPetal);
NaiveModelPetalResubErr;


PredictedValue = predict(NaiveModelPetal,meas(:,3:4));
ConfMat
min(meas(:,3:4));
max(meas(:,3:4));
[x,y] = meshgrid(1:.1:6.9,0.1:.1:2.5);
PredictedGrid = predict(NaiveModelPetal, [x y]);
gscatter(x,y,PredictedGrid,'grb','sod')
xlabel('Petal Length')
ylabel('Petal Width')
title('{\bf Classification by Naïve Bayes Method}')


%%%%%%%%%%%%%%%% Describing differences by discriminant analysis
print('Describing differences by discriminant analysis');
DiscrModel = fitcdiscr(meas,species);
DiscrModel;
DiscrModel.Mu
DiscrModel.Coeffs
X = [meas(:,3) meas(:,4)];
DiscrModelPetal = fitcdiscr(X,species);
DiscrModelPetal;
gscatter(meas(:,3), meas(:,4), species,'rgb','osd');
Const12 = DiscrModelPetal.Coeffs(1,2).Const;
Linear12 = DiscrModelPetal.Coeffs(1,2).Linear;
hold on
Bound12 = @(x1,x2) Const12 + Linear12(1)*x1 + Linear12(2)*x2;
B12 = ezplot(Bound12,[0 7.2 0 2.8]);
B12.Color = 'r';
B12.LineWidth = 2;
Const23 = DiscrModelPetal.Coeffs(2,3).Const;
Linear23 = DiscrModelPetal.Coeffs(2,3).Linear;
Bound23 = @(x1,x2) Const23 + Linear23 (1)*x1 + Linear23 (2)*x2;
B23 = ezplot(Bound23,[0 7.2 0 2.8]);
B23.Color = 'b';
B23.LineWidth = 2;

xlabel('Petal Length')
ylabel('Petal Width')
title('{\bf Linear Classification by Discriminant Analysis}')


NewPointsX=[2 5 6];
NewPointsY=[0.5 1.5 2];
LabelsNewPoints = predict(DiscrModelPetal,[NewPointsX' NewPointsY']);
LabelsNewPoints;
plot(NewPointsX,NewPointsY,'*');






