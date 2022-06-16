%% transfer Chao's analyzed data from the .log file to make a varaiable for the left eye data. The first columns are RFs, the second is the threshold, and third is the error
LEdata = [4	1.23524	0.05757;
          8	1.2447	0.05895;
          16 1.14361	0.04461]
      
REdata = [4	1.47807	0.06266;
          8	1.21707	0.04705;
          16	1.06591	0.06938]

      
%%take the y values and raise them to the tenth power      
LEdata(:,2) = 10.^LEdata(:,2)
REdata(:,2) = 10.^REdata(:,2)
      
figure(2)
clf
plot(LEdata(:,1), LEdata(:,2), 'bo-')
hold on
plot(REdata(:,1), REdata(:,2), 'r*-')
set(gca,'YScale','log')


