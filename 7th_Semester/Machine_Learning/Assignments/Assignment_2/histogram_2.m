clear;
clc;

Vect5 = normrnd(50,3,1000,1);
Hist = histfit(Vect5);
disp(Hist);