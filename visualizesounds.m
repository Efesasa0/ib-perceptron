clear variables
close all
clc
figure('Position',[0,0,1000,1000])
cutpoints=[30000 31000 24000 23000 22000 26000 21000 22000 24000];
for i= 2:10
 load (sprintf('A%d.mat',i))
 subplot(9,1,i-1)
 plot (x)
end

figure('Position',[0,0,1000,1000])
for i= 2:10
 load (sprintf('I%d.mat',i))
 subplot(9,1,i-1)
 plot (x)
end

figure('Position',[0,0,1000,1000])
for i= 1:10
 load (sprintf('testA%d.mat',i))
 subplot(10,1,i)
 plot (x)
end

figure('Position',[0,0,1000,1000])
for i= 1:10
 load (sprintf('testI%d.mat',i))
 subplot(10,1,i)
 plot (x)
end



