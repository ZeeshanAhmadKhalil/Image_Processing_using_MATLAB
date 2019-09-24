rng(0,'twister'); %initialize the random number generator
a = sqrt(2); %variance
b = 0; %mean
y = a.*randn(12000,1) + b; %vector of 12000 random values drawn from a
t=0:12000-1; %time axis
t1=transpose(t) %for equalizing dimensions
subplot(1,2,1);
hist(y) %Histogram of original signal
title('Histogram of Original Signal')
subplot(1,2,2);
plot(t1,y) %Plot of original signal zoomed version
title('Plot of Original Signal')
xlabel('Time(sec)')
ylabel('Magnitude')
axis([-.2 100 -6 6]) % we specify the axis limits and zoomed the graph
figure
partition = [-6:0.375:5.625]; %create intervals
codebook = [-6:0.375:6]; %Assigning one entry for each interval
[index,quants] = quantiz(y,partition,codebook); % Quantize.
subplot(1,2,1)
hist(quants) %Histogram of quantized signal
title('Histogram of Quantized Signal')
subplot(1,2,2)
plot(t1,quants) %%Plot of quantized signal zoomed version
axis([-.2 100 -6 6])
title('Plot of Quantized Signal')
xlabel('Time(sec)')
ylabel('Magnitude')
figure
plot(t1,y,'x',t1,quants) %Original Signal vs Quantized Signal
legend('Original signal','Quantized signal');
title('Original Signal vs Quantized Signal')
xlabel('Time(sec)')
ylabel('Magnitude')
axis([-.2 100 -6 6])
%%%%%% "Error Section" %%%%%%%%%%
e = (y- transpose(quants)); % Error
error=abs(max(e))
%%%%%% "Chi Square Test" %%%%%%%%%%
[h,p,states] = chi2gof(y)
%%SNR Section%%
