function fis=SetFISParam(fis,p)

    nInputs = numel(fis.Inputs);
    for i=1:nInputs
       nMF=numel(fis.Inputs(i).MembershipFunctions);
       
       for j=1:nMF
          k=numel(fis.Inputs(i).MembershipFunctions(j).Parameters);
          fis.Inputs(i).MembershipFunctions(j).Parameters=p(1:k);
          p(1:k)=[];        
       end
       
    end
    
    nOutputs = numel(fis.Outputs);
    for i=1:nOutputs
       nMF=numel(fis.Outputs(i).MembershipFunctions);
       
       for j=1:nMF
          k=numel(fis.Outputs(i).MembershipFunctions(j).Parameters);
          fis.Outputs(i).MembershipFunctions(j).Parameters=p(1:k);
          p(1:k)=[];     
       end
       
    end
    

end