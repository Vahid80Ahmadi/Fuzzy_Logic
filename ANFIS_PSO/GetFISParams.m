function p=GetFISParams(fis)
    
    p=[];
    
    nInputs = numel(fis.Inputs);
    for i=1:nInputs
       nMF=numel(fis.Inputs(i).MembershipFunctions);
       
       for j=1:nMF
           p=[p fis.Inputs(i).MembershipFunctions(j).Parameters];  %#ok 
       end
    end
    
    nOutputs = numel(fis.Outputs);
    for i=1:nOutputs
       nMF=numel(fis.Outputs(i).MembershipFunctions);
       
       for j=1:nMF
           p=[p fis.Outputs(i).MembershipFunctions(j).Parameters];  %#ok 
       end
    end
    
    
    
end