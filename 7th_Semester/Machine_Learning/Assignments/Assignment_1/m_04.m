clear;
clc;

%%%%%%%%%%%%%%%%%%% Reading mixed strings and numbers %%%%%%%%%%%%%%%%%%% 
code_14_loading_table =readtable ('C:\Assignment_1_ML_62017010084\file\table.csv');

disp('code 14 in chapter 2');
disp(code_14_loading_table);

%we can read table without reading variable

code_15_loading_table =readtable ('C:\Assignment_1_ML_62017010084\file\table.csv','ReadVariableNames',false);

disp('code 15 in chapter 2 without reading variables');
disp(code_15_loading_table);
