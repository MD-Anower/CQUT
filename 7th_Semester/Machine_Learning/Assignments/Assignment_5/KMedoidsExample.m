
%%%%%%%%%%%  Partitioning around the actual center - K-medoids clustering

PerLoc = xlsread('Data/PeripheralLocations.xls');
gscatter(InputData (:,1), InputData (:,2))
[IdCluster,Kmedoid,SumDist,Dist,IdClKm,info] = kmedoids(PerLoc,3);
info
gscatter(PerLoc(:,1), PerLoc(:,2), IdCluster,'bgr','xo^')
hold on
plot(Kmedoid(:,1),Kmedoid(:,2),'x','LineWidth',4,'MarkerEdgeColor','k','MarkerSize',25)
silhouette(PerLoc, IdCluster)




%load carsmall
%PerLoc = xlsread('Data/PeripheralLocations.xls');
%gscatter(InputData(:,1), InputData(:,2))
%gscatter(Weight, MPG, Origin)
%[IdCluster,Kmedoid,SumDist,Dist,IdClKm,info] = kmedoids(PerLoc,3);

%gscatter(PerLoc(:,1), PerLoc(:,2), IdCluster,'bgr','xo^')
%hold on
%plot(Kmedoid(:,1),Kmedoid(:,2),'x','LineWidth',4,'MarkerEdgeColor','k','MarkerSize',25)
%silhouette(PerLoc, IdCluster)











