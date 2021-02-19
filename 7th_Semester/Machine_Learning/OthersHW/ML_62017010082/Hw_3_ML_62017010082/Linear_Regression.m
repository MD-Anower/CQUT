%linear regression model
VehicleData = readtable('VehiclesItaly.xlsx');
VehicleData(1:10,:)
lrm = fitlm(VehicleData,'Registrations~Population');
plotResiduals(lrm) 
plotResiduals(lrm,'probability')
outliers = find(lrm.Residuals.Raw < -1.5*10^5);
lrm2 = fitlm(VehicleData,'Registrations~Population','Exclude',outliers);
plotResiduals(lrm2,'probability')
lrm1 = fitlm(VehicleData,'Registrations~Population');
lrm2 = fitlm(VehicleData,'Registrations~Population','RobustOpts','on');
subplot(1,2,1)
plotResiduals(lrm1,'probability')
subplot(1,2,2)
plotResiduals(lrm2,'probability')
outliers = find((lrm2.Residuals.Raw < -1.5*10^5) | (lrm2.Residuals.Raw > 1.5*10^5));
lrm3 = fitlm(VehicleData,'Registrations~Population','RobustOpts','on','Exclude',outliers);
subplot(1,2,1)
plotResiduals(lrm2,'probability')
subplot(1,2,2)
plotResiduals(lrm3,'probability')
