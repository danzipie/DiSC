% Script for loading and saving ESO2 - Supermarket Power data in mat format
clc; clear all; close all;

% Setup
month = 'Jan';
dataPath = [month '/'];
fileNameLT = 'frost.csv';
fileNameMT = 'koel.csv';

% Import data form CSV file
dataLT = csvread([dataPath fileNameLT],2,1);
dataMT = csvread([dataPath fileNameMT],2,1);

power = (dataLT(:,3) + dataMT(:,3)).*1000;

% Save file
saveName = ['smPower' month];
save(saveName,'power');
