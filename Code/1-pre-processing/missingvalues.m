%load dataset
data1 = readtable('CAdata.xlsx');

%(1) sort row
%sort row attribute 'diagnosis' in ascending order
data1 = sortrows(data1, 'diagnosis', 'ascend');

%(2)find missing roq
missingrow = ismissing(data1);

%(3)
%--Total missing values in the column selected
totalmissing = sum(ismissing (data1));

%(4)percentage missing
percentage = (totalmissing/ size (data1,1))*100;

%(5)
%fillmising data
data1(:,11) = fillmissing(data1(:,11), 'movmean', 452);