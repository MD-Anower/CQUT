clear;
clc;

%Importing data into MATLAB
code_8_loading_variable = load ('C:\Assignment_1_ML_62017010084\file\matrix.txt');
disp('code 8 in chapter 2');
disp(code_8_loading_variable);

% Reading an ASCII-delimited file

code_9_loading_variable = dlmread('C:\Assignment_1_ML_62017010084\file\matrix_2.txt',';');
disp('code 9 in chapter 2');
disp(code_9_loading_variable);

% To import the first two rows and two columns only
% code_10_loading_variable = dlmread('C:\84_assignment_1\file\matrix.txt',0,0,[0,0,1,2]);
% disp('code 10 in chapter 2');
% sprintf(delimiter);
% disp(code_10_loading_variable);




