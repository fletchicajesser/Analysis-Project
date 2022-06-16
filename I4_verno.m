%% transfer Chao's analyzed data from the .log file to make a varaiable for the data. The first columns are RFs, the second is thresholds, and third is the standard error

I4LEdata = [0.5	1.69788	0.05231
            1	1.57844	0.04511]
      
I4REdata = [0.5	1.76926	0.05613
            1	1.60723	0.0637]

I4BEdata = [0.5	1.80224	0.0455
            1	1.65995	0.05384]

      
%% take the y values and standard error and raise them to the tenth power 

I4LEdata(:,2) = 10.^I4LEdata(:,2)
I4REdata(:,2) = 10.^I4REdata(:,2)
I4BEdata(:,2) = 10.^I4BEdata(:,2)
I4LEdata(:,3) = 10.^I4LEdata(:,3)
I4REdata(:,3) = 10.^I4REdata(:,3)
I4BEdata(:,3) = 10.^I4BEdata(:,3)

%% find the log diff between the data points. anything >0.3 is a significant difference
round(log(I4LEdata(:,2)./I4REdata(:,2)),2)
round(log(I4LEdata(:,2)./I4BEdata(:,2)),2)
round(log(I4REdata(:,2)./I4BEdata(:,2)),2)

figure(2)
clf
plot(I4LEdata(:,1), I4LEdata(:,2), 'bo-')
errorbar(I4LEdata(:,1), I4LEdata(:,2), I4LEdata(:,3),'bo-', 'vertical')
hold on
plot(I4REdata(:,1), I4REdata(:,2), 'r*-')
errorbar(I4REdata(:,1), I4REdata(:,2), I4REdata(:,3),'r*-', 'vertical')
plot(I4BEdata(:,1), I4BEdata(:,2), 'gs-')
errorbar(I4BEdata(:,1), I4BEdata(:,2), I4BEdata(:,3),'gs-', 'vertical')
set(gca,'YScale','log')
set(gca,'TickDir','out')
title('I4 Verno')
xlabel('Spatial Frequency')
ylabel('Detecting Threshold (sec)')