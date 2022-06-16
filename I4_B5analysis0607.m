%% transfer Chao's analyzed data from the .log file to make a varaiable for the data. The first columns are RFs, the second is thresholds, and third is the standard error

I4LEdata = [4	1.23524	0.05757;
          8	1.2447	0.05895;
          16 1.14361 0.04461]
      
I4REdata = [4	1.47807	0.06266;
          8	1.21707	0.04705;
          16 1.06591 0.06938]

I4BEdata = [4	1.23181	0.05028;
           8	1.14608	0.06842;
           16 0.83822 0.051]

      
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

%% B5 data

B5LEdata = [4 1.11293 0.05174;
          8	0.810005 0.04783;
          16 0.80782 0.04295];
  
B5REdata = [4 1.23613 0.05053;
          8	0.692964 0.06773;
          16 0.882579 0.05171];

     
B5BEdata =[4 1.11229 0.04682;
          8	0.856644 0.05606;
          16 0.711327 0.05629];

      

B5LEdata(:,2) = 10.^B5LEdata(:,2)
B5REdata(:,2) = 10.^B5REdata(:,2)
B5BEdata(:,2) = 10.^B5BEdata(:,2)
B5LEdata(:,3) = 10.^B5LEdata(:,3)
B5REdata(:,3) = 10.^B5REdata(:,3)
B5BEdata(:,3) = 10.^B5BEdata(:,3)

%% plot the data: always use figure(2) and clf. use xlim to set the lower and higher limits for the x axis


subplot(1,2,1)
plot_function(B5LEdata, B5REdata, B5BEdata, 'B5')
subplot(1,2,2)
plot_function(I4LEdata, I4REdata, I4BEdata, 'I4')
suptitle('Radial Frequency Thresholds')

round(log(B5LEdata(:,2)./B5REdata(:,2)),2)
round(log(B5LEdata(:,2)./B5BEdata(:,2)),2)
round(log(B5REdata(:,2)./B5BEdata(:,2)),2)