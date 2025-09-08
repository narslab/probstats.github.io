%%%
import stemleafplot.*
reptime = [ .2 .3 .5 .5 .6 .6 .7 .7 .7 .8 .8 .8 1.0 1.0 1.0 1.0 1.1 1.3 1.5 1.5 1.5 ...
      1.5 2.0 2.0 2.2 2.5 2.7 3.0 3.0 3.3 3.3 4.0 4.0 4.5 4.7 5.0 5.4 5.4 7.0 ...
      7.5 8.8 9.0 10.3 22.0 24.5];

% Stem-and-leaf plot
stemleafplot(reptime,0)  
stemleafplot(10*reptime,0)

% Histogram

histogram(reptime)
histogram(reptime,5)
histogram(reptime,10)

histogram(reptime, [2,4,6,10,20,30])
xlabel('Time (hours)')
