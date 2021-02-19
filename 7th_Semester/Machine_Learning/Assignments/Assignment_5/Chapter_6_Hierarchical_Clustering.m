clear;
clc;


DataPoints = [100 100;90 90;10 10;10 20;90 70;50 50] ;
disp(DataPoints);
DistanceCalc = pdist(DataPoints);
disp(DistanceCalc);
DistanceMatrix = squareform(DistanceCalc);
disp(DistanceMatrix);

%%%%%%%%%%% Defining a grouping in hierarchical  clustering

GroupsMatrix = linkage(DistanceCalc);
disp(GroupsMatrix);
dendrogram(GroupsMatrix)
VerifyDistaces = cophenet(GroupsMatrix, DistanceCalc);
NewDistanceCalc = pdist(DataPoints, 'cosine');
figure(1)
NewGroupsMatrix = linkage(NewDistanceCalc,'weighted');
NewVerifyDistaces = cophenet(NewGroupsMatrix, NewDistanceCalc);


