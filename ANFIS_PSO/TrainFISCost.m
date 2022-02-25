function [z, out]=TrainFISCost(x,fis,data)
    
    MinAbs=1e-4;
    if any(abs(x)<MinAbs)
       S=(abs(x)<MinAbs);
       x(S)=MinAbs.*sign(x(S));
    end

    p0=GetFISParams(fis);
    p=x.*p0;
    
    fis=SetFISParam(fis,p);
    
    TrainInputs=data.TrainInputs;
    TrainOutputs=data.TrainOutputs;
    
    FISOutputs=evalfis(fis,TrainInputs);
    
    e=TrainOutputs-FISOutputs;
    
    MSE=mean(e(:).^2);
    RMSE=sqrt(MSE);
    
    z=RMSE;
    
    out.fis=fis;
    out.FISOutputs=FISOutputs;
    out.MSE=MSE;
    out.RMSE=RMSE;
    
    
end