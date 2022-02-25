function [TrainData, TestData]=CreateData()

    % Model
    f=@(x) sin(x);

    % Train Data
    TrainInputs=linspace(0,2*pi,50)';
    TrainOutputs=f(TrainInputs); 

    % Test Data
    TestInputs=linspace(0,2*pi,1000)';
    TestOutputs=f(TestInputs);
    
    TrainData.TrainInputs=TrainInputs;
    TrainData.TrainOutputs=TrainOutputs;
    TestData.TestInputs=TestInputs;
    TestData.TestOutputs=TestOutputs;

end