%%% Boxplots

%%%%%%%%%%%%%%
% (a) Load the Daphne and Santa Cruz beak size data
Daphne = load('DaphneBeaks.txt');
SantaCruz = load('SantaCruzBeaks.txt');
 
%%
% (b) Create a labeled vector of beak sizes for plotting

beakSizes = [Daphne; SantaCruz];
islands = [repmat('  Daphne  ', size(Daphne)); repmat('Santa Cruz', size(SantaCruz))];
%{
The islands variable holds an array of strings in a single column. 
The first 751 elements of island hold '  Daphne  ' and the remaining 43 elements hold 'Santa Cruz'
%}

%%
% (c) Create a box plot of unequal length data sets using labeled data 
figure
boxplot(beakSizes, islands, 'whisker', 2)
ylabel('Beak size in mm')
title('Geospiza fortis from nearby islands in the Galápagos');
%}
