% function : extract every subject series to one file.
% first import REST1.txt(filename)
% The lower function name is extract_niiData.m
clc
clear
% Input
x=91;
y=109;
z=91;
rawData=textread('REST1.txt','%s');
rawData=sort(rawData);
% Initial
SeriesLength=x*y*z;
SubjectNumber = length(rawData);
timeSeries=ones( SeriesLength,SubjectNumber );

% Doing work
for i = 1 : SubjectNumber
    filename=char(rawData{i});
    oneSubjectData=extract_niiData (filename,91,109,91,SubjectNumber);
    timeSeries(:,i)= oneSubjectData;
end



