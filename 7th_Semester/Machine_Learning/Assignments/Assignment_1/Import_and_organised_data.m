clear;
clc;

% Familiarizing yourself with the MATLAB desktop

code_1_vector = [10 20 30 40 50 60 70 80 90 100];
disp('code 1 in chapter 2');
disp(code_1_vector);

code_2_matrix = [10 20 30; 40 50 60 ;70 80 90];
disp('code 2 in chapter 2');
disp(code_2_matrix);

code_3_met = code_2_matrix (1,2);
disp('code 3 in chapter 2');
disp(code_3_met);

code_4 = code_2_matrix(1:3,3);
disp('code 4 in chapter 2');
disp(code_4);

code_5 = code_2_matrix(:,3);
disp('code 5 in chapter 2');
disp(code_5);

vector_even = 0:2:20;
disp('code 6 in chapter 2');
disp(vector_even);


your_variables_are = who;
disp('code 7 in chapter 2');
disp(your_variables_are);



