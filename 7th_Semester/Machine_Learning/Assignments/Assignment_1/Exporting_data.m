clear;
clc;
delete('C:\Assignment_1_ML_62017010084\file\write_to_file\MyMatrix.txt');
delete('C:\Assignment_1_ML_62017010084\file\write_to_file\MyMatrix.xls');
delete('C:\Assignment_1_ML_62017010084\file\write_to_file\MyMatrix.csv');
%%%%%%%%%%%%%%% Exporting data from MATLAB %%%%%%%%%%%%%%%%%%

MyMatrix = rand(7);

disp('code 16 in chapter 2');
disp(MyMatrix);

% Now simply write a matrix named MyMatrix to a file named MyMatrix.txt using the default delimiter (,)

dlmwrite('C:\Assignment_1_ML_62017010084\file\write_to_file\MyMatrix.txt', MyMatrix);

disp('result from exported txt file');
type('C:\Assignment_1_ML_62017010084\file\write_to_file\MyMatrix.txt');

xlswrite('C:\Assignment_1_ML_62017010084\file\write_to_file\MyMatrix.xls', MyMatrix);

csvwrite('C:\Assignment_1_ML_62017010084\file\write_to_file\MyMatrix.csv', MyMatrix);

