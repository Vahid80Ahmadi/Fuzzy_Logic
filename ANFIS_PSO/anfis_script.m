clc;
clear;
close all;
%% Load Data

[TrainData, TestData]=CreateData();


%% Generate Basic FIS

fis=CreateInitialFIS(TrainData,5);

%% Train Using PSO Algorithm

fis=TrainUsingPSO(fis,TrainData);

      
%% Results

TestOutputs=TestData.TestOutputs;
TestInputs=TestData.TestInputs;

FISTest=evalfis(fis,TestInputs);

ee=TestOutputs-FISTest;

TrainInputs=TrainData.TrainInputs;
TrainOutputs=TrainData.TrainOutputs;
FISOutputs=evalfis(fis,TrainInputs);

%% Plot Results
PlotResults(TrainOutputs,FISOutputs,'Train Data');
PlotResults(TestOutputs,FISTest,'Test Data');


