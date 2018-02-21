% Script for loading consumption data of industry, agriculture, commercial
% and residential. All data is on a hour sampling. There is one week of
% data.
clc; clear; close all;

% Setup
Range = 'B2:B26';   % B is winter and C is summer

%% Read Industry
% file to read
dataPath =  'industry_agricultur_commercial/';
fileName = 'industry.xlsx';

season = Range; % B is winter and C is summer 
pIndu = xlsread([dataPath fileName],season);
p = pIndu*1000;
saveName = 'induPower';
save(saveName,'p');

% season = Range; % B is winter and C is summer 
% p = xlsread(fileName,season);
% p = p*1000;
% saveName = 'induPowerSummer';
% curPath = pwd;
% cd(savePath);
% save(saveName,'p');
% cd(curPath);

%% Read Agriculture
% file to read
fileName = 'agriculture.xlsx';

season = Range; % B is winter and C is summer 
p = xlsread([dataPath fileName],season);
p = p*1000;
saveName = 'agriPower';
save(saveName,'p');

% season = 'C2:C169'; % B is winter and C is summer 
% p = xlsread(fileName,season);
% p = p*1000;
% saveName = 'agriPowerSummer';
% curPath = pwd;
% cd(savePath);
% save(saveName,'p');
% cd(curPath);

%% Read Commercial
% file to read
fileName = 'commercial.xlsx';
season = Range; % B is winter and C is summer 
p = xlsread([dataPath fileName],season);
p = p*1000;
saveName = 'commPower';
save(saveName,'p');

% season = 'C2:C169'; % B is winter and C is summer 
% p = xlsread(fileName,season);
% p = p*1000;
% saveName = 'commPowerSummer';
% curPath = pwd;
% cd(savePath);
% save(saveName,'p');
% cd(curPath);
