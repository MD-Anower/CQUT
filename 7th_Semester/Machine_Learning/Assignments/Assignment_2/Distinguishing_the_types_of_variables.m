clear;
clc;

%%%%%%%%%%%%%%%%%%%%% A first look at data  %%%%%%%%%%%%%%%%%%%%
SampleData = readtable('C:\84_assignment_2\data\dataML.xlsx');
summary(SampleData);
disp(SampleData);


%%%%%%%%%%%%%%%%%%%%%%%% Finding missing values %%%%%%%%%%%%%%%%%%%

id = {'Japan' '83' '4'};
WrongPos = ismissing(SampleData,id);
disp('Finding missing values');
SampleData(any(WrongPos,2),:)

%%%%%%%%%%%%%%%%%%%%%% Changing the datatype %%%%%%%%%%%%%%%%%%%%%%%%
% summary(SampleData);
disp('Changing the datatype');
SampleData.games = num2str(SampleData.games);
summary(SampleData(:,3));


%%%%%%%%%%%%%%%%%   Replacing the missing value %%%%%%%%%%%%%%%%%
disp('%%%%%%%%%%%%%%%%%   Replacing the missing value %%%%%%%%%%%%%%%%%');
SampleData = standardizeMissing(SampleData,-1);
summary(SampleData(:,3));



%%%%%%%%%%%%%%%%%%%%%%%% Ordering the table %%%%%%%%%%%%%%%%%%%%%%%5

SampleDataOrdered = sortrows(SampleData,{'ranking'},{'descend'});
disp('the ranking row has been sorted by decending order');
disp(SampleDataOrdered);

%%%%%%%%%%%%%%%%%%%% Finding outliers in data %%%%%%%%%%%%%%%%%%%%

% SampleDataOutlier = isoutlier(SampleData(2:end,3:5));
% disp(SampleDataOutlier);

%%%%%%%%%%%%%%%%%%%%%%%% Organizing multiple sources of data into one  %%%%%%%%%%%%%%%%%
disp('Organizing multiple sources of data into one ');
SampleData1 = SampleData(1:6,:);
disp(SampleData1);

SampleData2 = SampleData(7:end,:);
disp(SampleData2);

SampleDataComplete = [SampleData1;SampleData2];
disp(SampleDataComplete);

LifeExpectancy = readtable('C:\84_assignment_2\data\Titanic.xlsx');
disp(LifeExpectancy);

SampleDataLE = join(SampleDataComplete,LifeExpectancy, 'Keys','gender');
disp('the table has been joint');
disp(SampleDataLE);


