cadence = [.95 .85 .92 .95 .93 .86 1.00 .92 .85 .81 .78 .93 .93 1.05 .93 1.06 .96 .81 .96];
% note that the semi-colon suppresses output upon running the file

%%
% Let's begin by finding a few measures of location
mean_cadence = mean(cadence);

%%

%%
median(cadence)
mode(cadence)

% And then measures of dispersion
var(cadence)
std(cadence)

%%
% Then we can plot a histogram
figure
histogram(cadence, 7)
xlabel('Cadence (strides per second)')
ylabel('Counts')
title('Histogram of cadences')

%%
% Assign measures to variables
m = mean(cadence) ;
med = median(cadence);
mod = mode(cadence);
firstquart = prctile(cadence,25) ;

%%
% And then measures of dispersion
va = var(cadence);
sd = std(cadence);

%%
boxplot(cadence)
grid
%%
hist(cadence, 5)


