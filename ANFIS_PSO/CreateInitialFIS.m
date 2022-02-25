function fis=CreateInitialFIS(data,nCluster)
    
    if ~exist('nCluster','var')
        nCluster='auto';
    end

    TrainInputs=data.TrainInputs;
    TrainOutputs=data.TrainOutputs;
    
    fcm_u=2;
    fcm_MaxIter=100;
    fcm_MinImp=1e-5;
    fcm_Display=false;

    fcm_options=[fcm_u, fcm_MaxIter, fcm_MinImp, fcm_Display];
    fis=genfis3(TrainInputs,TrainOutputs,'sugeno',nCluster,fcm_options);
    
end