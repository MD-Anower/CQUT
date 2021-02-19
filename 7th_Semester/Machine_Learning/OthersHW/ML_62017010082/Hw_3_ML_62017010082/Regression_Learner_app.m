%Regression Learner App
url = 'https://archive.ics.uci.edu/ml/machine-learning-databases/00291/airfoil_self_noise.dat';
websave('AirfoilSelfNoise.csv',url);
varnames = {' FreqH '; 'AngleD'; 'ChLenM'; 'FStVelMs'; ' SucSDTM ';' SPLdB'}; 
AirfoilSelfNoise = readtable('AirfoilSelfNoise.csv');
AirfoilSelfNoise.Properties.VariableNames = varnames;