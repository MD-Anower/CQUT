clear;
clc;


% audiowrite('C:\84_assignment_1\file\audio\a13_001.wav',y,Fs);
%filename = audioread('C:\Assignment_1_ML_62017010084\file\audio\a13_001.wav');
filename = audioread('C:\Assignment_1_ML_62017010084\file\audio\a13_005.wav');
[audio_data,Fs] = audioread('C:\Assignment_1_ML_62017010084\file\audio\a13_005.wav');

sound(audio_data,Fs);

plot(audio_data);