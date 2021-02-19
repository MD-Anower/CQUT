clear;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Histogram 

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



