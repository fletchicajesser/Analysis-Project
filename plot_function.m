function plot_function(LEdata, REdata, BEdata, animalID)
%function plot_function(LEdata, REdata, BEdata, animalID): use data taken
%from the .log file. column 1 is radial frequencies, column 2 is
%thresholds, and column 3 is standard error
figure(3)
clf
plot(LEdata(:,1), LEdata(:,2), 'bo-')
errorbar(LEdata(:,1), LEdata(:,2), LEdata(:,3),'bo-', 'vertical')
hold on
plot(REdata(:,1), REdata(:,2), 'r*-')
errorbar(REdata(:,1), REdata(:,2), REdata(:,3),'r*-', 'vertical')
plot(BEdata(:,1), BEdata(:,2), 'gs-')
errorbar(BEdata(:,1), BEdata(:,2), BEdata(:,3),'gs-', 'vertical')
set(gca,'YScale','log','Ytick',[3 10 30 100])
set(gca,'TickDir','out')
xlim([0 20])
ylim([1 100])
title(animalID)
xlabel('Radial Frequency')
ylabel('Threshold (arc sec)')
