Minerals = xlsread('Minerals.xls');
InputData = Minerals(:,1:2);
gscatter(InputData(:,1), InputData(:,2))
rng(1);
[IdCluster,Centroid] = kmeans(InputData,4);
gscatter(InputData(:,1), InputData(:,2), IdCluster,'bgrm','x*o^')
figure(2)
hold on
plot(Centroid(:,1),Centroid(:,2),'x','LineWidth',4,'MarkerEdgeColor','k','MarkerSize',25)
[IdCluster3,Centroid3] = kmeans(InputData,3);
silhouette(InputData, IdCluster3)
EvaluateK = evalclusters(InputData,'kmeans','CalinskiHarabasz','KList',[1:6]);



%%%%%%%%%%
PerLoc = xlsread('PeripheralLocations.xls');
gscatter(InputData (:,1), InputData (:,2))
[IdCluster,Kmedoid,SumDist,Dist,IdClKm,info] = kmedoids(PerLoc,3);
info
gscatter(PerLoc(:,1), PerLoc(:,2), IdCluster,'bgr','xo^')
hold on
plot(Kmedoid(:,1),Kmedoid(:,2),'x','LineWidth',4,'MarkerEdgeColor','k','MarkerSize',25)
silhouette(PerLoc, IdCluster)
