load fisheriris
DiscrModel = fitcdiscr(meas,species);
DiscrModel.Mu
DiscrModel.Coeffs
X = [meas(:,3) meas(:,4)];
DiscrModelPetal = fitcdiscr(X,species);
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
plot(NewPointsX,NewPointsY,'*')
DiscrModelResubErr = resubLoss(DiscrModel);
PredictedValue = predict(DiscrModel,meas);
ConfMat = confusionmat(species,PredictedValue);
Err = ~strcmp(PredictedValue,species);
gscatter(meas(:,3), meas(:,4), species,'rgb','osd');
hold on
plot(meas(Err,3), meas(Err,4), 'kx');
xlabel('Petal length');
ylabel('Petal width');


%%%%%%  X=rand(100,2);
Y=(X(:,1)<0.3 | X(:,2)>0.6);
SimpleTree=fitctree(X,Y);
view(SimpleTree)
view(SimpleTree,'mode','graph')

%FisherIris dataset
load fisheriris
tabulate(species)
gplotmatrix(a,b,group)
gplotmatrix(meas, meas, species);
gscatter(meas(:,3), meas(:,4), species,'rgb','osd');
xlabel('Petal length');
ylabel('Petal width');
ClassTree= fitctree(meas,species);
view(ClassTree)
view(ClassTree,'mode','graph')
MeasNew= [5.9 3.2 1.3 0.25];
predict(ClassTree,measNew)
resuberror = resubLoss(ClassTree);
cvrtree = crossval(ClassTree);
cvloss = kfoldLoss(cvrtree);


