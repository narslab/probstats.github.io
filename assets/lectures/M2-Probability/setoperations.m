% Lecture M2b: Theory of Probability
% Data input, Set operations

%% 
X = csvread('2013Jan_Baltimore_MeanTempF.csv',1,1);
Y = csvread('2014Jan_Baltimore_MeanTempF.csv',1,1);

%%
A = intersect(X,Y);
B = union(X,Y);
C = setdiff(X,Y);

%{
In the sample space of X, what is the probability that the mean temperature
is 33F?
%}
% First, find the number of occurrences of 33 in X
num33 = nnz(X == 33); %nnz=number of non-zero matrix elements

% Find the total number of temperatures (outcomes) in X 
% This should be 31 (days)
totalX = length(X);

% The required probability is the ratio:
p33 = num33/totalX;

%% Further Questions
% How would you find the complement of p33?

% What is the probability that the temperature on a random day in January
% 2013 was 32F or lower?

% What is the probability that the temperature on a random day in January
% 2014 was 32F or lower?

% Which month had more days below freezing (32F)?