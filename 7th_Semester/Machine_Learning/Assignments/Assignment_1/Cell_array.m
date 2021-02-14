clear;
clc;

%%%%%%%%%%%%%%%%%%%% Data organization %%%%%%%%%%%%%%%%%%%%

MyFamily = {'Luigi', 'Simone', 'Tiziana'; 13, 11, 43; 43, 211, 53; 12, 16, 32; 43, 23, 52};
disp('created cell array');
disp(MyFamily);


MyFamily2= MyFamily(2:4,1:3);
% MyFamily2= MyFamily(rows,column);
% MyFamily2= MyFamily(start_row:end_row,start_column:end_column);

disp('print specific row column from cell array');
disp(MyFamily2);

LastCell= MyFamily{2,3};
disp('print specific data');
disp(LastCell);

MyFamily2{2,2}=110;
disp('update a specific data in cell array');
disp(MyFamily2);



% To assign any content to a variable, we can type
[r1c1, r2c1, r1c2, r2c2, r1c3, r2c3]= MyFamily{1:2,1:3};
disp('To assign any content to a variable, we can type');
disp(r2c1);


type_of = class(r1c1);
disp('type of variables');
disp(type_of);






