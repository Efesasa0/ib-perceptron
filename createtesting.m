clear all
close all
clc

recObj = audiorecorder;
Fs = 44100 ; 
nBits = 16 ; 
nChannels = 1 ; 
ID = -1; % default audio input device 

disp('Recording Test A')
for i=1:10
  recObj = audiorecorder(Fs,nBits,nChannels,ID);
  disp('Start speaking.')
  recordblocking(recObj,1);
 % disp('End of Recording.');
  x = recObj.getaudiodata;
  save(sprintf('testA%d.mat',i),'x')
end

pause(2)

disp('Recording test IIIIII')
for i=1:10
  recObj = audiorecorder(Fs,nBits,nChannels,ID);
  disp('Start speaking.')
  recordblocking(recObj,1);
  %disp('End of Recording.');
  x = recObj.getaudiodata;
  save(sprintf('testI%d.mat',i),'x')
end

