function bestfis=TrainUsingPSO(fis,data)
       
    %% Problem Definition
    p0=GetFISParams(fis);
    Problem.CostFunction=@(x) TrainFISCost(x,fis,data);
    
    Problem.nVar=numel(p0);
    
    alpha=0.8;
    Problem.VarMin=10^(-alpha);
    Problem.VarMax=10^alpha;
    
    %% PSO Params
    Params.MaxIt=50;
    Params.nPop=20;
    
    %% Run PSO
    
    results=RunPSO(Problem,Params);
    
    %% Best FIS
    
    p=results.BestSol.Position.*p0;
    bestfis=SetFISParam(fis,p);
    
    
    
    
end