%% *************************************************
%% startup.m
%%    CNSVERSION=1.1
%% *************************************************
%% This file is read by matlab no matter where it is launched.
%% Location: ~/Documents/MATLAB/startup.m
%% Info and examples:  https://www.cns.nyu.edu/sys/#matlab-paths
%%
%% *************************************************
%% *************************************************
%%  Add your own matlab CUSTOMIZATIONS below.

%% set path
restoredefaultpath
addpath(genpath('/e/3.1/p1/fletcher/Documents/MATLAB'))
addpath(genpath('/e/3.1/p1/fletcher/Documents/GitHub/Analysis-Project'))

P = regexp(path, pathsep, 'split'); 
for iP = 1:numel(P)
  if contains(P{iP}, '.AppleDouble')
    rmpath(P{iP});
  end
end

clc
clear
%% set default figure stuffs
set(0,'DefaultAxesBox','off') 
set(0,'DefaultAxesFontName','Arial')
set(0,'DefaultTextFontName','Arial')
set(0,'DefaultTextFontAngle','oblique')
set(0,'DefaultAxesFontSize',10)
set(0,'DefaultAxesColor','none')
set(0,'DefaultAxesTickDir','out')
set(0,'DefaultFigurePosition',[600 600 700 600])
set(0,'DefaultAxesTickLength',[0.02 0.025])
format shortG

fprintf('\n ***  Using startup file *** \n');






