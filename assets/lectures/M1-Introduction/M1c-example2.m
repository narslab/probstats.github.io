%%% Boxplots

%%
%%%%%%%%%%%%%%%%%
% (a) Load the data
load fisheriris;


% predefined vars: meas (150x4), species (150x1)
% measurements: sepal length, sepal width, petal length, petal width


%%
% (b) Plot histograms, find statistical measures:

figure
% histogram of first column of meas (sepal length)
histogram(meas(:, 1));
title('Overall sepal length distribution across all 3 species')
% find mean, median, mode, standard deviation, variance
% mean(meas(:, 1))
mean_sepal_length = mean(meas(:, 1));
fprintf("The mean of the sepal length is %2.1f", mean_sepal_length)
median(meas(:, 1))
mode(meas(:, 1))
std(meas(:, 1))

%%
%{
To obtain species-based measures, index the full dataset accordingly as
follows; below I show the example for 'setosa':
%}

setosa_measures = meas(strcmp(species, 'setosa'),1);
figure
histogram(setosa_measures(:,1))
title('Sepal length distribution for Iris setosa')

%%
% (c) Compare the distributions of sepal and petal lengths using box plots
flowerLengths = meas(:, [1,3]);
figure
boxplot(flowerLengths, 'Label',{'Sepal', 'Petal'})
ylabel('Length in cm')
title('Comparison of sepal and petal lengths for Fisher iris data')

% prctile(flowerLens,25,1)

%%
%%%%%%%%%%%%%%
% (d) Draw a box plot of the sepal lengths by species
sepalLengths = meas(:, 1);
figure
boxplot(sepalLengths)
ylabel('Sepal length in cm')


figure
boxplot(sepalLengths, species)
ylabel('Sepal length in cm')
title('Comparison of three species in the Fisher iris data')

%%
%%%%%%%%%%%%%%
% (e) Draw a notched boxplot of the sepal widths
% The notch marks the 95% confidence interval for the medians

sepalWidths = meas(:, 2);
figure
boxplot(sepalWidths, species, 'notch', 'on')
ylabel('Sepal width in cm')
title('Comparison of three species in the Fisher iris data')


%%
% (f) Create scatterplots to investigate relationships between variable
% pairs
figure
scatter(sepalLengths, sepalWidths, 20)
xlabel('Sepal Length (cm)')
ylabel('Sepal Width (cm)')
title('Sepal Width versus Sepal Length')

petalLengths = meas(:,3);
petalWidths = meas(:,4);

figure
scatter(petalLengths, petalWidths, 40)
xlabel('Petal Length (cm)')
ylabel('Petal Width (cm)')
title('Petal Width versus Petal Length')


figure
scatter(petalLengths, sepalLengths, 40)
xlabel('Petal Length (cm)')
ylabel('Sepal Length (cm)')
title('Sepal Length versus Petal Length')


figure
scatter(petalWidths, sepalWidths, 40)
xlabel('Petal Width (cm)')
ylabel('Sepal Width (cm)')
title('Sepal Width versus Petal Width')
