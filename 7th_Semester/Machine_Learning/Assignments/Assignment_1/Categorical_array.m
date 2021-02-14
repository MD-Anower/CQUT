clear;
clc;

%%%%%%%%%%%%%%%% Categorical array %%%%%%%%%%%%%%
load hospital;
Sex=hospital.Sex;
Age=hospital.Age;

SexC=categorical(Sex);
disp(categories(SexC));

AgeC=categorical(Age);
categories(AgeC)
