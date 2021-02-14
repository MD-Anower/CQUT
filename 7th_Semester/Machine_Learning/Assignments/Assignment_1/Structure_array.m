clear;
clc;

%%%%%%%%%%%%%%%%%%%%%%% Structure array %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


field1 = 'Name';
value1 = {'Luigi','Simone','Tiziana'};
field2 = 'Amount';
value2 = {150000,250000,50000};
field3 = 'Data';
% value3 = {[25, 65, 43; 150, 168, 127.5; 280, 110, 170],[5, 5, 23; 120, 118, 107.5; 200, 100, 140]};
value3 = {[25, 65, 43; 150, 168, 127.5; 280, 110, 170]};
customers = struct(field1 ,value1,field2,value2,field3,value3);

disp(customers);


disp(customers(2).Name);
disp(customers(1).Amount);
disp(customers(3).Data);

customers(4).Name='Giuseppe';

bar(customers(1).Data);
title(['Data of first customer: ', customers(1).Name]);

customers(1).Data(1:2,1:2);




