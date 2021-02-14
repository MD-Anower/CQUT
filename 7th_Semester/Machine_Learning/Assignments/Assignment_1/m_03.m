clear;
clc;

%%%%%%%%%%%%%%%%%%% Comma-separated value files %%%%%%%%%%%%%%%%%%% 
%code_10_loading_variable = csvread ('C:\MATLAB\Work\assignment_1\file\matrix.csv');
code_10_loading_variable = load ('C:\Assignment_1_ML_62017010084\file\matrix.csv');
disp('code 10 in chapter 2');
disp(code_10_loading_variable);

% This function also allows us to import only a selection of rows and columns.
% Toimport just a range of data contained in the file matrix.csv.
% MatrixCsv2=csvread('matrix.csv',0,0,[0,0,1,2])
code_11_loading_variable = csvread ('C:\Assignment_1_ML_62017010084\file\matrix.csv',0,0,[0,0,1,2]);
disp('code 11 in chapter 2');
disp(code_11_loading_variable);



%%%%%%%%%%%%%%%%%%% Importing spreadsheets %%%%%%%%%%%%%%%%%%%%%%

code_12_loading_variable = xlsread('C:\Assignment_1_ML_62017010084\file\matrix.xlsx');
disp('code 12 in chapter 2');
disp(code_12_loading_variable);


code_13_loading_variable = xlsread('C:\Assignment_1_ML_62017010084\file\matrix.xlsx','A2:D3');
disp('code 13 in chapter 2');
disp(code_13_loading_variable );

